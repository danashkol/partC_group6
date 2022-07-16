from datetime import timedelta
import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify
from app import interact_db


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
    cvc = request.form['cvc']
    if not cardHolder or not cardNumber or not expiredY or not expiredY or not cvc :
        return render_template('paymentPage.html', message_p='Some details are missing. Please fill all the fields')
    query = "INSERT INTO payments(cardHolder, expiredM, expiredY, cardNumber, cvc ) VALUES ('%s', '%s','%s', '%s', '%s')" % (
             cardHolder, expiredM, expiredY, cardNumber, cvc)
    interact_db(query=query, query_type='commit')
    return render_template('paymentPage.html', message_p='Payment completed Successfully')