## Sections Completed
1. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world
2. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-ii-templates
3. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iii-web-forms
4. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iv-database
5. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-v-user-logins
6. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-vi-profile-page-and-avatars
7. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-vii-error-handling

## Currently on
https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-viii-followers

## create migration scripts
flask db migrate -m "some message"

## apply migrations
flask db upgrade

## start flask shell, which adds the whole app to the context, so imports are not needed
flash shell