![Github Action Badge](https://github.com/Fleaurent/Python_Github_Actions/actions/workflows/makefile.yml/badge.svg)  

# Python Github Actions

1. create and activate venv  
```bash
# 1. select python version via pyenv
pyenv global 3.9

# 2. create venv
$ python -m venv .venv

# 3. activate venv
$ .venv\Scripts\activate

# 4. install python packages to .venv
(.venv)$ make install
```
  
2. call make commands  
   - `$ make format`  
   - `$ make lint`  
   - `$ make test`   
  
3. add Github-Actions configuration  
`.github/workflows/makefile.yml`  
```yml
name: Makefile CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    
    - name: Set up Python 3.9
      uses: actions/setup-python@v1
      with:
        python-version: 3.9
      
    - name: Install dependencies
      run: make install
      
    - name: Run Pylint
      run: make lint
      
    - name: Run Pytest
      run: make test
    
    - name: Run Black
      run: make format
```
