#!/bin/sh

docker stop $(docker ps -a -q --format '{{.Names}}')
docker rm $(docker ps -a -q --format '{{.Names}}')

docker-compose up -d