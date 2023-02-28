# m3-compose

Match three - demo project

Prod Version:   https://vk.com/app7506736

### Requirements

[See Install Docker and create SSL keys for nginx](additional.md)

### Installation

    cd /var/
    mkdir m3-test
    cd m3-test
    git clone https://github.com/a-f-larionov/m3-node.git
    git clone https://github.com/a-f-larionov/m3-compose.git
    git clone https://github.com/a-f-larionov/m3-x-service.git

### Setup

    cp ./m3-node/server/config.example.js ./m3-node/server/config.test.js
    cp ./m3-node/client/config.example.js ./m3-node/client/config.test.js
    cp ./m3-compose/.env.example ./m3-compose/.env

Checklist for these files:
- database credentials
- soc net appId and secretKey
- telegram chatId and botToken
- web socket host, port, url.

### Run

    docker compose up -d

### Test

    curl http[s]://host:port/images/coin.png
    curl http[s]://host:port/service/--help
    curl http[s]://host:port/service/client-standalone?soc-net-user-id=1


### Contacts

email: [a.f.larionov@gmail.com](mailto:a.f.larionov@gmail.com)<br>
telegram: [a_f_larionov](https://t.me/a_f_larionov)<br>
facebook: https://www.facebook.com/a.f.larionov <br>
vkontakte: https://vk.com/a.f.larionov
