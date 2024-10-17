sudo mkdir -p ~/.docker-registry
sudo mkdir -p /mnt/raid/registry
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/.docker-registry/docker-compose.yml

sudo openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj "/C=ES/ST=Zaragoza/L=Zaragoza/O=veladan.org/OU=software/CN=micro-atx.local"

docker compose -f ~/.docker-registry/docker-compose.yml up -d
