

run:
	flask --app app run

debug:
	flask --app app run --debug

prod:
	waitress-serve --call 'app:create_app'

init-db:
	flask --app app init-db

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

clean:
	rm -rf htmlcov .coverage __pycache__ app/__pycache__ test/__pycache__ .pytest_cache instance

one_time_setup: clean install_deps init-db

