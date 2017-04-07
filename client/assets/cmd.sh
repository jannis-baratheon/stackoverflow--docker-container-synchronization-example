#!/bin/bash

echo Sending request: PING
response=$(echo "PING" | nc server 8080)
echo Server replied: $response
echo Can exit now. Bye!
