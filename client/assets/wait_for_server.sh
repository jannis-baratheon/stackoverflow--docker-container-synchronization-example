#!/bin/bash

server_host=$1
sleep_seconds=5

while true; do
    echo "Checking server status..."

    output=$(echo "" | nc $server_host 7070)

    if [ "$output" == "RUNNING" ]
    then
        echo "Server is running and ready to process requests."
        break
    fi

    echo "Server is warming up. Trying again in $sleep_seconds seconds."
    sleep $sleep_seconds
done
