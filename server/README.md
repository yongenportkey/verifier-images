# Local testing server for portkey-DID-server

## Pre-requisites

Docker: https://www.docker.com/

## Set up

Edit the .env file with the commit you are interested in from https://github.com/Portkey-Wallet/portkey-DID-server:

```bash
BRANCH=7367005b2c731b1954af366262d370d63b50054f
```

## Start the server

Run `docker-compose up -d`.

## Rebuild

If you need to rebuild the docker image, use this command instead:

```bash
docker-compose up -d --build
```
