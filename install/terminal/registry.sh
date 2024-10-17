sudo mkdir ~/docker-registry
sudo mkdir ~/docker-registry/data
sudo cp ~/.local/share/omyserv/configs/registry/docker-compose.yml ~/docker-registry/data/docker-compose.yml

docker compose ~/docker-registry/data/docker-compose.yml up -d