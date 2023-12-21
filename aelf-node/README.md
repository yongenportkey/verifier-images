# Local testing node for aelf blockchain

## Pre-requisites

Docker: https://www.docker.com/
aelf-command: https://docs.aelf.io/en/latest/reference/cli/introduction.html#install-aelf-command

## Set up

Use aelf-command to create a local keystore:

```bash
$ aelf-command create
Your wallet info is :
Mnemonic            : great mushroom loan crisp ... door juice embrace
Private Key         : e038eea7e151eb451ba2901f7...b08ba5b76d8f288
Public Key          : 0478903d96aa2c8c0...6a3e7d810cacd136117ea7b13d2c9337e1ec88288111955b76ea
Address             : 2Ue31YTuB5Szy7cnr3SCEGU2gtGi5uMQBYarYUR5oGin1sys6H
✔ Save account info into a file? … no / yes
✔ Enter a password … ********
✔ Confirm password … ********
✔
Account info has been saved to "/Users/username/.local/share/aelf/keys/2Ue31YTuB5Szy7cnr...Gi5uMQBYarYUR5oGin1sys6H.json"
```

Take note of the **password**, **address**, and **public key**.

Edit `appsettings.json` and modify:

```json
{
  "Account": {
    "NodeAccount": "change-this-to-the-address-of-your-account",
    "NodeAccountPassword": "change-this-to-the-password"
  },
  "Consensus": {
    "InitialMinerList": ["change-this-to-the-public-key-of-your-account"]
  }
}
```

## Start the node

Run `docker-compose up -d`.
