from datetime import timedelta
import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify


payment = Blueprint('payment', __name__,
                         static_folder='static',
                         template_folder='templates')


@payment.route('/payment')
def payment_main():
    return render_template('paymentPage.html')


@payment.route('/insert_charge', methods=['POST'])
def insert_charge_func():
    cardHolder = request.form['cardHolder']
    expiredM = request.form['expiredM']
    expiredY = request.form['expiredY']
    cardNumber = request.form['cardNumber']
    cvc=request.form['cvc']
    query = 'select * from costumers'
    users_list = interact_db(query, query_type='fetch')
    if userExists == True:
        return render_template('signIn_Up3.html', message_i='This Username Alraedy Exists. Please Try Again',
                               users=users_list)
    if userExists == False:
        if username == '':
            return render_template('signIn_Up3.html', message_i='Please Enter A Unique Username', users=users_list)
        else:
            query = "INSERT INTO costumers( username, fullName, email, password) VALUES ('%s', '%s','%s', '%s')" % (
             username, fullName, email, password)
            interact_db(query=query, query_type='commit')
            query = 'select * from costumers'
            users_list = interact_db(query, query_type='fetch')
            return render_template('signIn_Up3.html', message_i='User Added Successfully', users=users_list)
