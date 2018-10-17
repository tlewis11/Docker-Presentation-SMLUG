#!/bin/bash
docker build -t my-python-app .
docker run -p 8000:8000 -t my-python-app 
