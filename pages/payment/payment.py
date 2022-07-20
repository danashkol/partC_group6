from datetime import timedelta, datetime

import flask
import mysql.connector
import requests
from flask import Blueprint, render_template, request, redirect, session, jsonify, Flask
from app import interact_db

payment = Blueprint('payment', __name__,
                         static_folder='static',
                         template_folder='templates')


@payment.route('/payment', methods=['GET'])
def payment_main():
        query = "select * from orders where username = '%s' and status = 'in process'"%(session['username'])
        # TotalPrice = "select sum(price) from orders where username = '%s' and status = 'in process'"%(session['username'])
        # TP = interact_db(TotalPrice, query_type='fetch')
        # print(TP)
        OrdersList = interact_db(query, query_type='fetch')
        TP=0;
        for order in OrdersList:
            TP +=order.price
        print(TP)
        return render_template('paymentPage.html', OList=OrdersList, TPrice=TP)


# @payment.route('/deleteOrder', methods=['POST'])
# def delete_Order():
#     query = "select * from orders"
#     OrdersList = interact_db(query, query_type='fetch')



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
    UPDATEquery = "update orders  set status ='%s'where username = '%s';" % ('payed', session['username'])


    interact_db(query=query, query_type='commit')
    interact_db(query=UPDATEquery, query_type='commit')
    return render_template('paymentPage.html', message_p='Payment completed Successfully')