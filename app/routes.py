from flask import render_template
from app import app
import socket

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'David','title':'Home'}
    posts = [
        {
            'author': {'username': 'John'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'username': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        },
        {
            'author': {'username': 'Joe'},
            'body': 'The Raptors age was so hot!'
        }
    ]
    return render_template('index.html', title='Home', user=user, posts=posts)

@app.route("/login")
def login():
    # return "Login here!"
    return "Login to this host: " + socket.gethostname()