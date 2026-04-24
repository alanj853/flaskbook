## Sections Completed
1. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world
2. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-ii-templates
3. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iii-web-forms
4. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iv-database
5. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-v-user-logins
6. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-vi-profile-page-and-avatars
7. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-vii-error-handling
8. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-viii-followers
9. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-ix-pagination
10. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-x-email-support
11. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-xi-facelift

## Currently on
https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-xii-dates-and-times


## Email Test
TODO - remove later
(.venv) C:\dev\flaskbook>set MAIL_SERVER=smtp.freesmtpservers.com

(.venv) C:\dev\flaskbook>set MAIL_PORT=25

(.venv) C:\dev\flaskbook>flask --app app shell
[2026-03-26 16:47:37,981] INFO in __init__: Microblog startup
Python 3.13.2 (tags/v3.13.2:4f8bb39, Feb  4 2025, 15:23:48) [MSC v.1942 64 bit (AMD64)] on win32
App: app
Instance: C:\dev\flaskbook\instance
>>> from flask_mail import Message
>>> from app import mail
>>> msg = Message('test subject', sender=app.config['ADMINS'][0], recipients=['alanjackson.nuig@gmail.com'])
>>> msg.body = 'text body'
>>> msg.html = '<h1>HTML body</h1>'
>>> mail.send(msg)

## create migration scripts
flask db migrate -m "some message"

## apply migrations
flask db upgrade

## start flask shell, which adds the whole app to the context, so imports are not needed
flash shell