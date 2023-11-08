#activate venv and install dependencies
sudo apt install python3-pip
sudo apt install python3-virtualenv
virtualenv venv
source venv/bin/activate
pip3 install -r requirements.txt

#run main.py app
sudo apt install python3-flask -y
sudo apt install gunicorn -y
gunicorn main:app -b 0.0.0.0:8080 -D


