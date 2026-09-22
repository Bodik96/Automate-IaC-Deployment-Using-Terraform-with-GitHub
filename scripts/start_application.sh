#!/bin/bash
set -e 

cd /opt/cmtr-3a5fda50 

source venv/bin/activate 

nohup gunicorn \ 
	--bind 0.0.0.0:8000 \ 
	--workers 2 \
	app:app \ 
	> /var/log/cmtr-3a5fda50.log 2>&1 & s
	
sleep 3 

curl -f http://localhost:8000/health
