#!/bin/bash
apt-get update \
    && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common \
        telnet \
        elinks \
        python3-pip \
        python3-dev \
    && pip3 install --upgrade pip \
    && pip3 install pipenv \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository \
        "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
        $(lsb_release -cs) \
        stable" \
    && apt-get update \
    && apt-get install -y docker-ce=$(apt-cache madison docker-ce | grep 18.06 | head -1 | awk '{print $3}')

# echo "PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc
# source ~/.bashrc

systemctl daemon-reload
systemctl stop docker

usermod -aG docker vagrant

systemctl start docker
apt-get autoremove -y
sleep 2
# docker rm $(docker ps -a -q)

# Docker Compose
# curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose