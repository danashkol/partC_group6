from flask import Flask
from flask import Flask, redirect, render_template
from flask import url_for
from flask import render_template
from datetime import timedelta
import time
import random
from flask import request, session, jsonify

import asyncio

app = Flask(__name__)


@app.route('/')
def homePage():
    return render_template('home page.html')

@app.route('/signIn_Up')
def signIn_Up():
    return render_template('signIn_Up3.html')

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

@app.route('/contactUs')
def contactUs():
    return render_template('Contact Us.html')


if __name__ == '__main__':
    app.run()
