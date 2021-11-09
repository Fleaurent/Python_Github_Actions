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
   

