#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo docker compose up -d
elif [[ "$OSTYPE" == "darwin"* ]]; then
    docker compose up -d
fi

sleep 5s

./db_init.sh