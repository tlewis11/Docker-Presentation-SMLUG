#!/bin/bash

echo "Hello from the Python container"
pip install -r requirements.txt
python -m SimpleHTTPServer 8000
