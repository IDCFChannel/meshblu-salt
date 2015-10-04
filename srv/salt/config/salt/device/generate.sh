#!/bin/bash

docker-compose run --rm iotutil dump -s > ./manage/data/devices.json
