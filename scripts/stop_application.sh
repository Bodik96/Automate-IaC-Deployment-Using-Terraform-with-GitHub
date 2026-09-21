#!/bin/bash

set +e

pkill -f "python3 app.py"
pkill -f "python app.py"

exit 0

