RM = rm

.PHONY:  test

all: help

help:
	@echo "-- Menu"
	@echo "1. make test # Only unittest"
	@echo "2. make coverage"
	@echo "3. make html-coverage"

test:
	python2.7 -m unittest discover

coverage:
	coverage run -m unittest discover
	@echo
	@echo
	coverage report -m

html-coverage: coverage
	rm -rf htmlcov
	coverage html
	@echo
	@echo 'firefox htmlcov/index.html'
	@echo 'chromium htmlcov/index.html'

clean:
	find . -name '*.pyc' -exec $(RM) -f {} \;
	rm -rf htmlcov
	rm -rf .coverage
