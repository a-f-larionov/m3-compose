# m3-compose

Match three - demo project

Prod Version:   https://vk.com/app7506736

#### [Legenda](docs/legenda.md)
#### [Plan stage 0](docs/plan-stage-0.md) Prepare infrastructure
#### [Plan stage 1](docs/plan-stage-1.md) User Service
#### [Plan stage 2](docs/plan-stage-2.md) Map and Points Service
#### [Plan stage 3](docs/plan-stage-3.md) Stuff and Chests And Shop Service
#### [Plan stage 4](docs/plan-stage-4.md) Statistics Service

#### Depends projects: 
- [m3-node](https://github.com/a-f-larionov/m3-node/).
- [m3-users-service](https://github.com/a-f-larionov/m3-users-service/).

### Requirements

[See Install Docker and create SSL keys for nginx](additional.md)

### Installation

    cd /var/ && mkdir m3-test && cd m3-test
    git clone --depth=1 https://github.com/a-f-larionov/m3-node.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-compose.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-users-service.git

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