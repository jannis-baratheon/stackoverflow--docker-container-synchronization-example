#!/bin/bash

trap 'kill $(jobs -p)' EXIT

if [ ! -z "$DEPENDS_ON" ]; then
    for server in $DEPENDS_ON
    do
        /assets/wait_for_server.sh $server &
        wait $!
    done
fi

exec "$@"
