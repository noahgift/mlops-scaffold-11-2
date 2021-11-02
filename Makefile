install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello
	#lint Dockerfile
	#docker run --rm -i hadolint/hadolint < Dockerfile

deploy:
	echo "deploy goes here"

all: install lint test format