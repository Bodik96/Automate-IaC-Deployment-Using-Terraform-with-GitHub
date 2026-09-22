#!/bin/bash
set -e

cd /opt/cmtr-3a5fda50

source venv/bin/activate

nohup python3 app.py \
    > /var/log/cmtr-3a5fda50.log 2>&1 &

sleep 5

curl --fail --silent http://127.0.0.1:8000/health
