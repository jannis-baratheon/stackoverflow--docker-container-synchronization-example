#!/bin/bash

echo Starting diag server in $SLEEP_BEFORE_DIAG_SERVER_STARTS_SECONDS seconds

sleep $SLEEP_BEFORE_DIAG_SERVER_STARTS_SECONDS

nc -v -lk -p $DIAG_PORT -e /assets/checkports.sh &
