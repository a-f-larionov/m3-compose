# M3-compose 

Match three demo project.

Prod Version:   https://vk.com/app7506736

>Structure:
>- [m3-common-service](https://github.com/a-f-larionov/m3-common-service/)
>- [m3-users-service](https://github.com/a-f-larionov/m3-users-service/)
>- [m3-game-service](https://github.com/a-f-larionov/m3-game-service/)
>- [m3-node(legacy)](https://github.com/a-f-larionov/m3-node/)

![m3-diagram.drawio.png](docs%2Fm3-diagram.drawio.png)

### Requirements

[See Install Docker and create SSL keys for nginx](additional.md)

### Installation

    cd /var/ && mkdir m3-local && cd m3-local
    git clone --depth=1 https://github.com/a-f-larionov/m3-node.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-compose.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-common-service.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-users-service.git
    git clone --depth=1 https://github.com/a-f-larionov/m3-game-service.git

### Setup

    cp ./m3-node/server/config.example.js ./m3-node/server/config.test.js
    cp ./m3-node/client/config.example.js ./m3-node/client/config.test.js
    cp ./m3-compose/.env.example ./m3-compose/.env

### Run

    docker compose up -d

### Test

    curl http[s]://host:port/images/coin.png
    curl http[s]://host:port/service/client-standalone?soc-net-user-id=1


### Known issues

For letsencrypt set  
 /etc/letsencrypt:/var/keys/letsencrypt


### Contacts

email: [a.f.larionov@gmail.com](mailto:a.f.larionov@gmail.com)<br>
telegram: [a_f_larionov](https://t.me/a_f_larionov)<br>