[![Python application test with Github Actions](https://github.com/son-n-pham/Python-scaffold/actions/workflows/main.yml/badge.svg)](https://github.com/son-n-pham/Python-scaffold/actions/workflows/main.yml)

# Python-scaffold
This is a project scaffold for Python

![image](https://user-images.githubusercontent.com/79841341/126060307-104272d4-0241-4b10-9a93-3eb709e9f767.png)

### Step 1: Add Github repo
- Choose README and gitignore
- Go to the Code page, select clone with SSH

![image](https://user-images.githubusercontent.com/79841341/126060402-40566411-d5c1-4154-afe8-200776e8a360.png)


### Step 2: Go back to cloud 9, do git clone
- Setup ssh-keygen before git clone:
  - ssh-keygen -t rsa
  - public key **id_rsa** is generated, use **cat** to expose the public key into commandline and copy it into Github
  - copy that public key to SSH in setting of Github
- git clone git@github.com:son-n-pham/Python-scaffold.git

### Step 3: Create recommended files.
Go to scaffold folder, then create:
  - Makefile: touch Makefile
  - hello.py: touch hello.py
  - requirements.txt: touch requirement.txt
  - Create virtual environment: It is better to create the virtual environement with the same name of Github repo:
    ```bash
    python3 -m venv ~/.scafford
    source ~/.scaffold/bin/activate
    ```
  - Add the below into Makefile:
    ```
    # This is to upgrade pip and install all required packages
    install:
      pip install --upgrade pip &&\
      pip install -r requirements.txt
		
    # This is to format python file
    format:
      black *.py

    # This is to check the python file
    lint:
      pylint --disable=R,C hello.py

    # This is to test the python test file
    test:
      python -m pytest -vv --cov=hello test_hello.py

    # Run install lint and test
    all: install lint test
    ```
