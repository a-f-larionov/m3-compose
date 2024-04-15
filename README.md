## Match three project

Prod Version:   https://vk.com/app7506736

> Structure:
>- [m3-common-service](https://github.com/a-f-larionov/m3-common-service/)
>- [m3-users-service](https://github.com/a-f-larionov/m3-users-service/)
>- [m3-game-service](https://github.com/a-f-larionov/m3-game-service/)
>- [m3-lib](https://github.com/a-f-larionov/m3-lib/)

![m3-diagram.drawio.png](https://raw.githubusercontent.com/a-f-larionov/m3-compose/main/docs/m3-diagram.drawio.png)

### Requirements

[Install Docker and create SSL keys for nginx.](docs/additional.md)

### Installation

    cd /var/ && mkdir m3-local && cd m3-local
    git clone --depth=1 --recurvise https://github.com/a-f-larionov/m3.git

### Setup

    cp ./m3-node/server/config.example.js ./m3-node/server/config.test.js
    cp ./m3-node/client/config.example.js ./m3-node/client/config.test.js
    cp ./m3-compose/.env.example ./m3-compose/.env

### Run

    docker compose up -d

### Test

    curl http[s]://host:port/service/client-standalone?soc-net-user-id=1

### Contacts

email: [a.f.larionov@gmail.com](mailto:a.f.larionov@gmail.com)<br>
telegram: [a_f_larionov](https://t.me/a_f_larionov)<br>