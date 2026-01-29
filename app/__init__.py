from flask import Flask
from flask_login import LoginManager
from config import Config
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config.from_object(Config)
db = SQLAlchemy(app)
migrate = Migrate(app, db)

## create and initialise LoginManager
login = LoginManager(app)

## "login" is the view. You could also pass this to url_for
login.login_view = 'login'


from app import routes, models
