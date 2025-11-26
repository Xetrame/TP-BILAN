#! bin/bash
apt update && apt upgrade -y
echo "maj"
apt install docker -y
echo "install docker"
apt install docker-compose -y
echo "install docker-compose"
docker --version
docker-compose --version
