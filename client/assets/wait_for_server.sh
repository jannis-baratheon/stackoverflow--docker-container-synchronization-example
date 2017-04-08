#!/bin/bash

server_host=$1
sleep_seconds=5

while true; do
    echo -n "Checking $server_host status... "

    output=$(echo "" | nc $server_host 7070)

    if [ "$output" == "RUNNING" ]
    then
        echo "$server_host is running and ready to process requests."
        break
    fi

    echo "$server_host is warming up. Trying again in $sleep_seconds seconds..."
    sleep $sleep_seconds
done
