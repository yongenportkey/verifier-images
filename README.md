# Docker Images

Build arm docker images for portkey did.

# Server

## Build

Fetches from https://github.com/Portkey-Wallet/portkey-DID-server.git and builds:

```bash
cd server/build
docker-compose build
```

## Run

Save your appsettings for each service in the server/run folder:

- server/run/appsettings-api.json
- server/run/appsettings-silo.json

```bash
cd server/run
docker-compose up -d
```

To stop:

```bash
cd server/run
docker-compose down
```
