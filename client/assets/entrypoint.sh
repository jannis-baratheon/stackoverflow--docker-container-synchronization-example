#!/bin/bash

trap 'kill $(jobs -p)' EXIT

for server in $DEPENDS_ON
do
    /assets/wait_for_server.sh $server &
    wait $!
done

wait $!

exec "$@"
