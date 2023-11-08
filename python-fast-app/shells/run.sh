cd /home/ubuntu_server/appdeployment/python-app-deployment/python-fast-app
source venv/bin/activate
nohup uvicorn main:app --host 0.0.0.0 --port 8000 > app.log 2>&1 &
