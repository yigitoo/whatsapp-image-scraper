venv_name := venv
ifeq ($(OS), Windows_NT)
py_exec := python
venv := .\$(venv_name)\Scripts\activate
else
py_exec := python3
venv := source ./$(venv_name)/bin/activate
endif


venv: requirements.txt
	$(py_exec) -m venv $(venv_name)
	$(venv)
	pip3 install -r requirements.txt
run:
	$(py_exec) wp-scraper.py
.PHONY: venv requirements.txt