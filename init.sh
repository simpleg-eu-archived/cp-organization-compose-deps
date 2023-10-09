#!/bin/bash

sudo docker compose up -d

sleep 5s

./db_init.sh