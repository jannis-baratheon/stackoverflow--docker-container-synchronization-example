#!/bin/bash

for server in $DEPENDS_ON
do
    echo Sending request to $server: PING
    response=$(echo "PING" | nc $server 8080)
    echo Server $server replied: $response
done

echo Can exit now. Bye!
