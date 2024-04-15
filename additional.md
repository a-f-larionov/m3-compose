#### Install Docker

<a href="https://docs.docker.com/engine/install/">Instruction to install Docker</a><br>
<a href="https://docs.docker.com/engine/install/ubuntu/">Install on Ubuntu</a><br>
<a href="https://www.docker.com/products/docker-desktop">Install on Windows</a>


#### Create SSL keys (self signed certificate)

Move private and public key to /var/m3-test/m3-compose/keys/self-signed/

>For windows:<br>
> use PuTTY Key Generator

>For linux:<br>
>openssl req -x509 -outform PEM -sha256 -nodes -days 365 -newkey rsa:2048 -keyout priv.key -out cert.pem


##### Or Install Certbot

[According documentations](https://certbot.eff.org)
