virtual_env:
	python3 -m venv ~/.scafford
	source ~/.scaffold/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
install_stock:
	pip install --upgrade pip &&\
		pip install -r requirements_stock.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
stock_plot:
	streamlit run stock.py