#!/bin/bash

for port in $SERVER_PORT; do
    nc -z localhost $port;

    rc=$?

    if [[ $rc != 0 ]]; then
        echo "WARMUP";
        exit;
    fi
done

echo "RUNNING";
