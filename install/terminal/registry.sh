sudo mkdir -p ~/.docker-registry
sudo mkdir -p ~/.docker-registry/certs
sudo mkdir -p /mnt/raid/registry
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/.docker-registry/docker-compose.yml

sudo certbot certonly --standalone -d registry.veladan.org
sudo cp /etc/letsencrypt/live/registry.veladan.org/fullchain.pem .docker-registry/certs/cert.pem
sudo cp /etc/letsencrypt/live/registry.veladan.org/privkey.pem .docker-registry/certs/key.pem

sudo docker compose -f ~/.docker-registry/docker-compose.yml up -d
