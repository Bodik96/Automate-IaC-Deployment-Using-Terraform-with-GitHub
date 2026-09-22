#!/bin/bash
set -e

cd /opt/cmtr-3a5fda50

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
