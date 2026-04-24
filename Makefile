

run:
	flask --app app run

debug:
	flask --app app run --debug

prod:
	waitress-serve --call 'app:create_app'

init-db:
	flask db init

install_deps:
	pip install -r requirements.txt

test:
	pytest

testv:
	pytest -v

coverage:
	coverage run -m pytest

coverage_html: coverage
	coverage html

venv:
	python -m venv .venv

venv_clear:
	rm -rf .venv

secret:
	python -c 'import secrets; print(secrets.token_hex())'

## Scan the code for translatable strings and update the messages.pot file
update_messages_pot:
	pybabel extract -F babel.cfg -k _l -o messages.pot .

## Update the .po files with the new messages.pot file
update_messages_po:
	pybabel update -i messages.pot -d app/translations

## Compile the .po files into .mo files that can be used by the application
compile_messages:
	pybabel compile -d app/translations

clean:
	rm -rf htmlcov .coverage __pycache__ app/__pycache__ test/__pycache__ .pytest_cache instance app.db

one_time_setup: clean install_deps init-db

