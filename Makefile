ifeq ($(OS), Windows_NT)
py_exec := python
else
py_exec := python3
endif

venv_name := venv

venv: requirements.txt
	$(py_exec) -m venv $(venv_name)
	pip3 install -r requirements.txt
run:
	$(py_exec) wp-scraper.py
.PHONY: venv requirements.txt