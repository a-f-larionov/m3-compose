# m3-compose

Match three - demo project

Prod Version:   https://vk.com/app7506736

#### [Legenda](docs/legenda.md)
#### [Plan stage 0 Prepare](docs/plan-stage-0-prepare.md) Prepare infrastructure
Status: ✅✅✅✅✅✅
#### [Plan stage 1 Common Service](docs/plan-stage-1-common-service.md) Common Service
Status: ✅✅✅✅✅
#### [Plan stage 2 User Service](docs/plan-stage-2-user-service.md) User Service
Status: ✅✅✅✅✅✅✅✅✅✅✅✅
#### [Plan stage 3 Gameplay Service](docs/plan-stage-3-gameplay-service.md) Map and Points Service
Status: ✅✅✅✅✅✅✅✅✅✅✅✅

TimeLog:
<br>27.02.23 -  0/36  **0%**
<br>28.02.23 -  3/36  **8%**
<br>11.10.23 - 18/36 **38%**
<br>16.11.23 - 23/36 **62%**
<br>03.11.23 - 24/36 **64%**
<br>15.11.23 - 25/36 **67%**
<br>16.11.23 - 26/36 **72%**
<br>17.11.23 - 27/36 **75%**
<br>18.11.23 - 28/36 **78%**
<br>22.11.23 - 35/36 **92%**
<br>23.11.23 - 36/36 **100%**



#### Depends projects: 
- [m3-common-service](https://github.com/a-f-larionov/m3-common-service/).
- [m3-users-service](https://github.com/a-f-larionov/m3-users-service/).
- [m3-gameplay-service](https://github.com/a-f-larionov/m3-gameplay-service/).
- [m3-node(legacy)](https://github.com/a-f-larionov/m3-node/).

### Requirements

[See Install Docker and create SSL keys for nginx](additional.md)

### Installation

    cd /var/ && mkdir m3-local && cd m3-local
    git clone --depth=1 https://github.com/a-f-larionov/m3-node.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-compose.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-common-service.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-users-service.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-gameplay-service.git

### Setup

    cp ./m3-node/server/config.example.js ./m3-node/server/config.test.js
    cp ./m3-node/client/config.example.js ./m3-node/client/config.test.js
    cp ./m3-compose/.env.example ./m3-compose/.env

_checklist for these files:_
- _database credentials_
- _soc net appId and secretKey_
- _telegram chatId and botToken_
- _web socket host, port, url._

### Run

    docker compose up -d

### Test

    curl http[s]://host:port/images/coin.png
    curl http[s]://host:port/service/--help
    curl http[s]://host:port/service/client-standalone?soc-net-user-id=1


### Known issues

For letsencrypt set  
 /etc/letsencrypt:/var/keys/letsencrypt


### Contacts

email: [a.f.larionov@gmail.com](mailto:a.f.larionov@gmail.com)<br>
telegram: [a_f_larionov](https://t.me/a_f_larionov)<br>
facebook: https://www.facebook.com/a.f.larionov <br>
vkontakte: https://vk.com/a.f.larionov