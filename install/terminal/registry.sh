sudo mkdir -p ~/.docker-registry
sudo mkdir -p ~/.docker-registry/certs
sudo mkdir -p /mnt/raid/registry
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/.docker-registry/docker-compose.yml

sudo openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout ~/.docker-registry/certs/key.pem -out r~/.docker-registry/certs/cert.pem  -config ~/.local/share/omyserv/configs/registry/openssl.cnf

sudo docker compose -f ~/.docker-registry/docker-compose.yml up -d
