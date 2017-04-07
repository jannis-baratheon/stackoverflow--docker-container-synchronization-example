#!/bin/bash

echo Starting server in $SLEEP_BEFORE_APP_SERVER_STARTS_SECONDS seconds...

sleep $SLEEP_BEFORE_APP_SERVER_STARTS_SECONDS

echo Starting server...

nc -v -lk -p $SERVER_PORT -e /assets/process_request.sh
