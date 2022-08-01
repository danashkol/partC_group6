from datetime import timedelta, datetime
from settings import DB
import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify, Flask


# def interact_db(query, query_type: str):
#     return_value = False
#     connection = mysql.connector.connect(host='localhost',
#                                          user='root',
#                                          passwd='Vbgkvht767!',
#                                          database='project_db')
#     cursor = connection.cursor(named_tuple=True)
#     cursor.execute(query)

def interact_db(query, query_type: str):
    return_value = False
    connection = mysql.connector.connect(**DB)
    cursor = connection.cursor(named_tuple=True)
    cursor.execute(query)

    if query_type == 'commit':
        connection.commit()
        return_value = True

    if query_type == 'fetch':
        query_result = cursor.fetchall()
        return_value = query_result

    connection.close()
    cursor.close()
    return return_value


app = Flask(__name__)
# app.secret_key = '123'
app.config.from_pyfile('settings.py')
app.config['SESSION_PERMANENT'] = True
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(minutes=1000)

from pages.signIn_UP.signIn_Up import signIn_Up

app.register_blueprint(signIn_Up)

from pages.payment.payment import payment

app.register_blueprint(payment)

from pages.contact_us.contact_us import contact_us

app.register_blueprint(contact_us)

app.secret_key = '123'
app.config['SESSION_PERMANENT'] = True
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(minutes=1000)

@app.route('/')
def homePage():
    query = "select * from homepage"
    costumers_list = interact_db(query, query_type='fetch')
    session['logedin'] = False
    return render_template('home page.html', CList=costumers_list)

@app.route('/homePage')
def homePage1():
    query = "select * from homepage"
    costumers_list = interact_db(query, query_type='fetch')
    return render_template('home page.html', CList=costumers_list)

@app.route('/bachPartyCakes')
def bachPartyCakes():
    query = "select * from cakes where category='Bachellorete Party Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('bachlorette party cakes.html', CList=cakes_list)

@app.route('/girlCakes')
def girlCakes():
    query = "select * from cakes where category='Girl Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('girl cakes.html', CList=cakes_list)

@app.route('/boyCakes')
def boyCakes():
    query = "select * from cakes where category='Boy Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('boy cakes.html', CList=cakes_list)


@app.route('/adultCakes')
def adultCakes():
    query = "select * from cakes where category='Adult Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('adult cakes.html', CList=cakes_list)


@app.route('/numLetterCakes')
def numLetCakes():
    query = "select * from cakes where category='Num&Letter cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('num _ letter cakes.html', CList=cakes_list)


@app.route('/weddingCakes')
def weddingCakes():
    query = "select * from cakes where category='Wedding Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('wedding cakes.HTML' , CList=cakes_list)


@app.route('/ringCakes')
def ringCakes():
    query = "select * from cakes where category='Ring Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('ring cakes.html', CList=cakes_list)

@app.route('/pies')
def pies():
    query = "select * from cakes where category='Pies'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('pies.html', CList=cakes_list)


@app.route('/yeastCakes')
def yeastCakes():
    query = "select * from cakes where category='Yeast Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('yeast cakes.html', CList=cakes_list)


@app.route('/specialCakes')
def specialCakes():
    query = "select * from cakes where category='Special Cakes'"
    cakes_list = interact_db(query, query_type='fetch')
    return render_template('special cakes.html', CList=cakes_list)


@app.route('/accessibility')
def accessibility():
    return render_template('Accessibility.html')


@app.route('/aboutUs')
def aboutUs():
    return render_template('About Us.html')


@app.route('/privacyPolicy')
def privacyPolicy():
    return render_template('Privacy Policy.html')


@app.route('/ourTeam')
def ourTeam():
    return render_template('our team.html')


@app.route('/insertOrder', methods=['GET', 'POST'])
def insertOrder():
    if session['logedin']:
        print(session['username'])
    else:
        return render_template('signIn_Up3.html')
    username = session['username']
    date = datetime.now()
    if request.method == 'POST':
        price = request.form.get('OPrice')
        cake = request.form.get('Oname')
        username = session['username']
        if request.form.get('cake size') is None:
            size = 22
        else:
            size = request.form.get('cake size')
        if request.form.get('cake size') == "0":
            size = 22
        elif request.form.get('cake size') == "70":
            size = 24
        elif request.form.get('cake size') == "100":
            size = 26
        if request.form.get('cake flavor') is None:
            flavor = 'vanilla'
        else:
            flavor = request.form.get('cake flavor')
        age = request.form['age']
        if request.form.get('decoration color') is None:
            ageColor = 'white'
        else:
            ageColor = request.form.get('decoration color')
        greeting = request.form['greet']
        if request.form.get('decoration color greet') is None:
            greetingColor = 'white'
        else:
            greetingColor = request.form.get('decoration color greet')
        if request.form.get('Element1') is None:
            glutenFree = 0
        else:
            glutenFree = 1
        if request.form.get('Element2') is None:
            dairyFree = 0
        else:
            dairyFree = 1
        if request.form.get('Element3') is None:
            sugarFree = 0
        else:
            sugarFree = 1
        requests = request.form['requests']
        amountOfNumLetters = request.form['Letters']
        query = "INSERT INTO orders (username,cake, price, date, size, flavor,age, ageColor, greeting, greetingColor, " \
                "glutenFree, dairyFree, sugarFree,requests, amountOfNumLetters) VALUES ('%s','%s', '%s', '%s', '%s','%s', '%s', " \
                "'%s', '%s','%s', '%s', '%s','%s','%s', '%s')" % (
                    username, cake, price, date, size, flavor, age, ageColor, greeting, greetingColor, glutenFree,
                    dairyFree, sugarFree, requests, amountOfNumLetters)
        interact_db(query=query, query_type='commit')
        return redirect('/payment')
    return render_template('signIn_Up3.html', message="You must Log-In to make an order")


if __name__ == '__main__':
    app.run()
