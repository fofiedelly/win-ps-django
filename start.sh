#!/bin/sh

## Sample start script for Django application
exec gunicorn -b 0.0.0.0:8000 --chdir /usr/src -w 3 -k gaiohttp --error-logfile - --capture-output WSGI.APP
