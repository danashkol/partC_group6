from datetime import timedelta

import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify, Flask


def interact_db(query, query_type: str):
    return_value = False
    connection = mysql.connector.connect(host='localhost',
                                         user='root',
                                         passwd='Root',
                                         database='project_db')
    cursor = connection.cursor(named_tuple=True)
    cursor.execute(query)
    #

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
app.secret_key = '123'
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
    print(session['username'])
    query = "select * from homepage"
    costumers_list = interact_db(query, query_type='fetch')
    return render_template('home page.html', CList=costumers_list)


@app.route('/girlCakes')
def girlCakes():
    return render_template('girl cakes.html')


@app.route('/boyCakes')
def boyCakes():
    return render_template('boy cakes.html')


@app.route('/adultCakes')
def adultCakes():
    return render_template('adult cakes.html')


@app.route('/numLetterCakes')
def numLetCakes():
    return render_template('num _ letter cakes.html')


@app.route('/weddingCakes')
def weddingCakes():
    return render_template('wedding cakes.HTML')


@app.route('/ringCakes')
def ringCakes():
    return render_template('ring cakes.html')


@app.route('/bachPartyCakes')
def bachPartyCakes():
    return render_template('bachlorette party cakes.html')


@app.route('/pies')
def pies():
    return render_template('pies.html')


@app.route('/yeastCakes')
def yeastCakes():
    return render_template('yeast cakes.html')


@app.route('/specialCakes')
def specialCakes():
    return render_template('special cakes.html')


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
    return render_template('Our Team.html')


if __name__ == '__main__':
    app.run()
