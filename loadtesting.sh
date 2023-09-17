#!/usr/bin/env bash

locust -f locustfile.py --host https://helloflask-app.azurewebsites.net/ --users 500 --spawn-rate 5 