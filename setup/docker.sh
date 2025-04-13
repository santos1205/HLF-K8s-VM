#!/bin/bash

if [ -z $SUDO_USER ]
then
    echo "===== Script need to be executed with sudo ===="
    echo "Change directory to 'network/setup'"
    echo "Usage: sudo ./docker.sh"
    exit 0
fi

export DOCKER_VERSION=18.03

install_docker() {
    apt-get update
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update
    sudo apt install docker-ce docker-ce-cli containerd.io
    sudo usermod -aG docker ${USER}
}



# Install docker
install_docker

service docker restart
systemctl daemon-reload
systemctl restart docker

echo "======= Done. PLEASE LOG OUT & LOG Back In ===="
echo "Then validate by executing    'docker info'   "

docker version