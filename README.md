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
- Go to scaffold folder, then create:
  - Makefile: touch Makefile
  - hello.py: touch hello.py
  - requirements.txt: touch requirement.txt
  - Create virtual environment: It is better to create the virtual environement with the same name of Github repo:
    ```bash
    python3 -m venv ~/.scafford
    source ~/.scaffold/bin/activate
    ```
    
