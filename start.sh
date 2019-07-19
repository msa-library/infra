#!/bin/sh

docker stop $(docker ps -a -q --format '{{.Names}}' | grep infra_)
docker rm $(docker ps -a -q --format '{{.Names}}' | grep infra_)

docker-compose up -d