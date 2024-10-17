sudo mkdir -p ~/.docker-registry
sudo mkdir -p /mnt/raid/registry
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/.docker-registry/docker-compose.yml

sudo openssl req -x509 -newkey rsa:4096 -keyout ~/.docker-registry/key.pem -out ~/.docker-registry/cert.pem -days 365 -nodes

docker compose -f ~/.docker-registry/docker-compose.yml up -d
