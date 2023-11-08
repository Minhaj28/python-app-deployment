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

#run post_app 
cd post_app/
sudo pip3 install streamlit
sudo pip3 install mysql-connector-python
nohup streamlit run app1.py --server.port=7000 > streamlit.log 2>&1 &
sudo ufw allow 7000
cd ..

#run music_app
cd music_app/
nohup streamlit run app2.py --server.port=8000 > streamlit.log 2>&1 &
sudo ufw allow 8000
cd ..

#run document_app
cd document_app/
nohup streamlit run app3.py --server.port=9000 > streamlit.log 2>&1 &
sudo ufw allow 9000
cd ..

