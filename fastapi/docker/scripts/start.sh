#!/usr/bin/sh

python3 -m uvicorn main:app --reload --host $HOST --port $PORT 
