from datetime import timedelta

import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify, Flask


def interact_db(query, query_type: str):
    return_value = False
    connection = mysql.connector.connect(host='localhost',
                                         user='root',
                                         passwd='Arbesfeld@123',
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


@app.route('/')
def index_func():
    return render_template('home page.html')

app.secret_key = '123'
app.config['SESSION_PERMANENT'] = True
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(minutes=1000)