## create migration scripts
flask db migrate -m "some message"

## apply migrations
flask db upgrade

## start flask shell, which adds the whole app to the context, so imports are not needed
flash shell