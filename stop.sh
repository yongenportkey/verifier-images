#!/bin/sh

docker-compose -f ./aelf-node/docker-compose.yml down
docker-compose -f ./server/docker-compose.yml down
docker-compose -f ./verifier/docker-compose.yml down
docker volume prune --all --force