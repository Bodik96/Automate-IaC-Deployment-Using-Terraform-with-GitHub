#!/bin/bash

set -e

cd /opt/flask-app

nohup python3 app.py > /var/log/flask-app.log 2>&1 &

sleep 5

curl -f http://localhost:8000/health

