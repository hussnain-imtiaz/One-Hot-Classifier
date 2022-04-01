install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r azure-requirements.txt

lint:
	pylint --disable=R,C *.py
	
test:
	python -m pytest -vv --cov=app test_app.py