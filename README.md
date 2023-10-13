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

Save your appsettings for each service in the `server/run/` folder as `server/run/<file>`:

|       Service        |                 File                  |                                                      Reference                                                      |
| :------------------: | :-----------------------------------: | :-----------------------------------------------------------------------------------------------------------------: |
|      DBMigrator      |      appsettings-dbmigrator.json      |      https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.DbMigrator/appsettings.json      |
|      AuthServer      |      appsettings-authserver.json      |      https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.AuthServer/appsettings.json      |
|         Silo         |         appsettings-silo.json         |         https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.Silo/appsettings.json         |
|         Api          |         appsettings-api.json          |     https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.HttpApi.Host/appsettings.json     |
|  EntityEventHandler  |  appsettings-entityeventhandler.json  |  https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.EntityEventHandler/appsettings.json  |
| ContractEventHandler | appsettings-contracteventhandler.json | https://github.com/Portkey-Wallet/portkey-DID-server/blob/master/src/CAServer.ContractEventHandler/appsettings.json |

```bash
cd server/run
docker-compose up -d
```

To stop:

```bash
cd server/run
docker-compose down
```
