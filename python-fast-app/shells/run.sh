sudo apt update
sudo apt install -y python3-pip python3-venv

# Create and activate the virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
sudo apt-get -y install uvicorn

cd /home/ubuntu_server/appdeployment/python-app-deployment/python-fast-app
nohup uvicorn main:app --host 0.0.0.0 --port 8000 > app.log 2>&1 &
