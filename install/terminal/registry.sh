sudo mkdir -p ~/docker-registry
sudo mkdir -p ~/docker-registry/data
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/docker-registry/data/docker-compose.yml

docker compose -f ~/docker-registry/data/docker-compose.yml up -d
