.PHONY: hello install format lint test all

hello:
	echo hello
	echo hello > hello.txt

install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py

test: 
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
