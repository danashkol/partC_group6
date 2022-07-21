from datetime import timedelta
import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify
from app import interact_db

signIn_Up = Blueprint('signIn_Up', __name__,
                      static_folder='static',
                      template_folder='templates')


@signIn_Up.route('/signIn_Up')
def signIn_Up_main():
    return render_template('signIn_Up3.html')

@signIn_Up.route('/insert_costumer', methods=['POST'])
def insert_user():
    username = request.form['username']
    query = "select username from costumers where username='%s'" % username
    user = interact_db(query, query_type='fetch')
    if not user:
        fullName = request.form['fullName']
        email = request.form['email']
        password = request.form['password']
        query = "INSERT INTO costumers( username, fullName, email, password) VALUES ('%s', '%s','%s', '%s')" % (
            username, fullName, email, password)
        interact_db(query=query, query_type='commit')
        return render_template('signIn_Up3.html', message_i='Added')
    else:
        return render_template('signIn_Up3.html', message_i='exists')


@signIn_Up.route('/logIn', methods=['GET', 'POST'])
def logIn_func():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        query = "select username from costumers where username='%s' and password ='%s'" % (username, password)
        user = interact_db(query, query_type='fetch')
        if len(user) > 0:
            session['logedin'] = True
            session['username'] = user[0]
            string = str(session['username'])
            subString = string[14:-2]
            session['username'] = subString
            return redirect('/homePage')
        else:
            return render_template('signIn_Up3.html',
                                   message_i='no matching'
                                   )
    return render_template('signIn_Up3.html')

@signIn_Up.route('/log_out')
def logout_func():
    session.clear()
    session['logedin'] = False
    return render_template('signIn_Up3.html')


