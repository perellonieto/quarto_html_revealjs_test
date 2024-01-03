SHELL := /bin/bash

.ONESHELL:

setup:
	python3.9 -m venv venv
	source venv/bin/activate
	pip install --upgrade pip
	pip install -r requirements.txt

case1: clean setup
	cp _quarto.yml.case1 _quarto.yml
	quarto render
	rm _quarto.yml
	echo "Quarto version `quarto --version`"
	echo "output-dir: ."
	tree -L 2 -I venv

case2: clean setup
	cp _quarto.yml.case2 _quarto.yml
	quarto render
	rm _quarto.yml
	echo "Quarto version `quarto --version`"
	echo "output-dir: _site"
	tree -L 3 -I venv

clean:
	rm -rf _site site_libs search.json index_files ./*.html
