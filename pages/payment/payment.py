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
    query = "select * from orders where username = '%s' and status = 'in process'" % (session['username'])
    OrdersList = interact_db(query, query_type='fetch')
    TP = 0
    for order in OrdersList:
        TP += order.price
    return render_template('paymentPage.html', OList=OrdersList, TPrice=TP, message_p="None")


@payment.route('/insert_charge', methods=['POST'])
def insert_charge_func():
    cardHolder = request.form['cardHolder']
    expiredM = request.form['expiredM']
    expiredY = request.form['expiredY']
    cardNumber = request.form['cardNumber']
    cvc = request.form['cvc']
    if not cardHolder or not cardNumber or not expiredY or not expiredY or not cvc:
        query1 = "select * from orders where username = '%s' and status = 'in process'" % (session['username'])
        OrdersList = interact_db(query1, query_type='fetch')
        TP = 0
        if len(OrdersList)==0:
            return render_template('paymentPage.html', OList=OrdersList, TPrice=TP, message_p="no Cakes")
        for order in OrdersList:
            TP += order.price
        return render_template('paymentPage.html', OList=OrdersList, TPrice=TP, message_p="False")
    query = "INSERT INTO payments(cardHolder, expiredM, expiredY, cardNumber, cvc ) VALUES ('%s', '%s','%s', '%s', '%s')" % (
        cardHolder, expiredM, expiredY, cardNumber, cvc)
    UPDATEquery = "update orders  set status ='%s'where username = '%s';" % ('payed', session['username'])
    interact_db(query=query, query_type='commit')
    interact_db(query=UPDATEquery, query_type='commit')
    return render_template('paymentPage.html', TPrice=0, message_p="True")


@payment.route('/delete_Order', methods=['POST'])
def delete_Order():
    ID = request.form['ORDER2DELETE']
    queryDelete = "delete from orders where orderId='%s';" % ID
    interact_db(queryDelete, query_type='commit')
    query1 = "select * from orders where username = '%s' and status = 'in process'" % (session['username'])
    OrdersList = interact_db(query1, query_type='fetch')
    TP = 0;
    for order in OrdersList:
        TP += order.price
    return render_template('paymentPage.html', OList=OrdersList, TPrice=TP,
                           message_p='deleted')