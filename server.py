from flask import Flask, render_template, url_for, redirect, request, flash, session
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail, Message
import csv
import json
import math
from werkzeug.utils import secure_filename
import os


with open('static/config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)
app.secret_key = b'_5#y2L"F4Q8z\n\xec]/'

app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = 'subhojit.sparks@gmail.com',
    MAIL_PASSWORD = 'eaoonwfgosxwdxzs'
)
app.config['UPLOAD_FOLDER'] = params['upload_location']
mail = Mail(app)

if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)

class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(20), nullable=False)
    subject = db.Column(db.String(50), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(21), nullable=False)
    content = db.Column(db.String(120), nullable=False)
    bgimage = db.Column(db.String(255), nullable=False)
    date = db.Column(db.String(12), nullable=True)

@app.route("/contact", methods = ['GET', 'POST'])
def Contact_view():
    if(request.method=='POST'):
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')
        entry = Contact(email = email, subject = subject, msg = message, date= datetime.now() )
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from blog', 
            sender=email,
            recipients = ['subhojit.sparks@gmail.com'],
            body = message
            )
        flash('You message is sent','success')
        '''Fetch data and add it to the database'''
    
    return render_template('contact.html', params=params)


@app.route("/")
def Index():
    return render_template('index.html', params=params)


@app.route("/works")
def Works():
    posts = Posts.query.filter_by().all()
    #getting the number of page or last page number
    last = math.ceil(len(posts)/int(params['no_of_posts']))
    #what page user is.
    page = request.args.get('page')
    if (not str(page).isnumeric()):
        page = 1
    page = int(page)

    #showing post in the page using slicing    
    posts = posts[(page-1)*int(params['no_of_posts']):(page-1)*int(params['no_of_posts'])+ int(params['no_of_posts'])]

    #creating pagination
    if page==1:
        prev = "#"
        next = "/works?page="+ str(page+1)
    elif page==last:
        prev = "/works?page="+ str(page-1)
        next = "#"
    else:
        prev = "/works?page="+ str(page-1)
        next = "/works?page="+ str(page+1)
    post = Posts.query.filter_by().all()
    return render_template('works.html', params=params, posts=posts, prev=prev, next=next, post=post)



@app.route("/about")
def About():
    return render_template('about.html', params=params)

@app.route("/dashboard", methods=['GET', 'POST'])
def Dashboard():
    if ('user' in session and session['user']== params['admin_user']):
        posts = Posts.query.all()
        return render_template('dashboard.html', params=params, posts=posts)

    if request.method=="POST":
        username = request.form.get('uname')
        userpass = request.form.get('upass')
        if (username==params['admin_user'] and userpass==params['admin_password']):
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboard.html', params=params, posts=posts)       
        else:
            return render_template('login.html', params=params)
    return render_template('login.html', params=params)

@app.route("/edit/<string:sno>" , methods = ['GET', 'POST'])
def edit(sno):
    if ('user' in session and session['user'] == params['admin_user']):
        if request.method == 'POST':
            box_title = request.form.get('title')
            slug = request.form.get('slug')
            content = request.form.get('content')
            bgimage = request.files['bgimage']
            bgimage.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(bgimage.filename)))
            photo_n = bgimage.filename
            date = datetime.now()

            if sno=='0':
                post = Posts(title=box_title, slug=slug, content=content, bgimage=photo_n, date=date)
                db.session.add(post)
                db.session.commit()
                flash('your post is added','success')
                

            else:
                post = Posts.query.filter_by(sno=sno).first()
                post.title = box_title
                post.slug = slug
                post.content = content
                post.bgimage = bgimage
                post.date = date
                db.session.commit()
                flash('Congo! Post edited','success')
                return redirect('/edit/'+sno)

        post = Posts.query.filter_by(sno=sno).first()
        return render_template('edit.html', params=params, post=post)
    

@app.route("/logout")
def logout():
    session.pop('user')
    return redirect("/dashboard")

@app.route("/delete/<string:sno>" , methods=['GET', 'POST'])
def delete(sno):
    if "user" in session and session['user']==params['admin_user']:
        post = Posts.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
        flash('Post deleted','success')
    return redirect("/dashboard")


@app.route("/works/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('work.html', params=params, post=post)


    
    


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')