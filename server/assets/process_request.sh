#!/bin/bash

read -n 4 input

if [ "$input" == "PING" ]
then
    echo "PONG"
fi
