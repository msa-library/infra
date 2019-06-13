#!/bin/sh

docker stop infra_redis
docker stop infra_rediscommander
docker stop infra_nats

docker rm infra_redis
docker rm infra_rediscommander
docker rm infra_nats

docker-compose up -d