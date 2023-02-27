# m3-compose
M3 Compose

### Install

git clone m3-compose, m3-tri-base, m3-x-services

### Setup
copy .env.template to .env file and write environment variables
- db
- nginx


upload config.prod1.tri-base to /server
upload config.prod1.tri-base to /client and set ip for wss
see tempalte Config.PROFILE-TEMPLATE.tri-base.js

### Run

cd /var/job/m3-test/
    
    docker compose up

### Test