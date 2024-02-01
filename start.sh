#!/bin/sh

docker-compose -f ./aelf-node/docker-compose.yml up -d
docker-compose -f ./server/docker-compose.yml up -d
docker-compose -f ./verifier/docker-compose.yml up -d

# open the browser window
open http://localhost:8000/swagger
open http://localhost:5577
open http://localhost:5588