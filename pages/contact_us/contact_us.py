from flask import Blueprint, render_template, request, redirect, session, jsonify
from app import interact_db

contact_us = Blueprint('contact_us', __name__,
                       static_folder='static',
                       template_folder='templates')


@contact_us.route('/contact_us')
def contact_us_main():
    return render_template('Contact Us.html')


@contact_us.route('/insert_connection', methods=['POST'])
def insert_connection():
    name = request.form['name']
    email = request.form['email']
    phone = request.form['phone']
    message = request.form['message']
    query = "INSERT INTO connections(name , email , phone , message) VALUES ('%s', '%s','%s', '%s')" % (
        name, email, phone, message)
    interact_db(query=query, query_type='commit')
    return render_template('Contact Us.html', message_i='Message received')

