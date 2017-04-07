#!/bin/bash

trap 'kill $(jobs -p)' EXIT

/assets/wait_for_server.sh server &

wait $!

exec "$@"
