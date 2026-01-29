## Sections Completed
1. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world
2. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-ii-templates
3. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iii-web-forms
4. https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-iv-database


## create migration scripts
flask db migrate -m "some message"

## apply migrations
flask db upgrade

## start flask shell, which adds the whole app to the context, so imports are not needed
flash shell