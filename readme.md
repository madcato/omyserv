# omyserv

This project is a helper to automate the installation of a new Ubuntu server 24.04.

This project is inspired by [@ddh](https://x.com/dhh)'s [OMAKUB](https://omakub.org)

## Software installed by default
- [X] git 
- [X] netatalk (for AFP file sharing)
- [ ] resgitry (docker image registry), 
- [ ] registry with SSL (Let's Encrypt)
- [X] ollama 
- [X] docker
- [X] docker-compose
- [X] dev libraries
  
## Configuration
- [ ] Create user git to store personal git repositories
- [ ] Configure RAID disk on /mnt/raid
- [ ] Configure Docker registry images to be stored in `/mnt/raid/registry

## Install

```bash
wget -qO- https://raw.githubusercontent.com/madcato/omyserv/refs/heads/master/boot.sh | bash
```

## Doc
