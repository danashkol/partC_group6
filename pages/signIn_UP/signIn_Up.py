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


def userExist_func(username):
    userExist = False
    query = 'select * from costumers'
    users_list = interact_db(query, query_type='fetch')
    for user in users_list:
        if username == user.username:
            userExist = True
            return userExist
    return userExist

# def userPassExist_func(username, password):
#     userExist = False
#     query = 'select * from costumers'
#     users_list = interact_db(query, query_type='fetch')
#     for user in users_list:
#         if username == user.username and password == user.password:
#             userExist = True
#             return userExist
#     return userExist


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
        return render_template('signIn_Up3.html', message_i='User Added Successfully')
    else:
        return render_template('signIn_Up3.html', message_i='This Username Alraedy Exists. Please Try Again')
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
                                   logIn_message='No Matching Username, Please Sign In'
                                   )
    return render_template('signIn_Up3.html')

@signIn_Up.route('/log_out')
def logout_func():
    session['logedin'] = False
    session.clear()
    return render_template('signIn_Up3.html')





#
# @signIn_Up.route('/logIn', methods=['GET', 'POST'])
# def logIn_func():
#     if request.method == 'POST':
#         username = request.form['username']
#         password = request.form['password']
#         userExists = userExist_func(username)
#         if userExists:
#             query = "select password from costumers where username= '%s'" % username
#             user_password = str(interact_db(query=query, query_type='fetch'))
#             print(user_password)
#             print(password)
#             res = 'password' in user_password
#             print(res)
#             if res:
#                 session['logedin'] = True
#                 return render_template('signIn_Up3.html',
#                                        logIn_message='Log In succeeded!'
#                                        )
#             else:
#                 return render_template('signIn_Up3.html',
#                                        logIn_message='Wrong password!')
#         else:
#             return render_template('signIn_Up3.html',
#                                    logIn_message='No Matching Username, Please Sign In')
#     return render_template('signIn_Up3.html', logIn_message='Log In did not work')
#


#
# def interact_db(query, query_type: str):
#     return_value = False
#     connection = mysql.connector.connect(host='localhost',
#                                          user='root',
#                                          passwd='Arbesfeld@123',
#                                          database='project_db')
#     cursor = connection.cursor(named_tuple=True)
#     cursor.execute(query)
#     #
#
#     if query_type == 'commit':
#         connection.commit()
#         return_value = True
#
#     if query_type == 'fetch':
#         query_result = cursor.fetchall()
#         return_value = query_result
#
#     connection.close()
#     cursor.close()
#     return return_value

# @signIn_Up.route('/session')
# def session_func():
#     return jsonify(dict(session))
#
