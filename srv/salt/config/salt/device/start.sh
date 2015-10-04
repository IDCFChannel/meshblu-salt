#!/bin/bash

docker-compose build manage
docker-compose up --force-recreate -d manage
