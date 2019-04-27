#!/bin/bash
apt-get update \
    && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common \
        telnet \
        elinks \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository \
        "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
        $(lsb_release -cs) \
        stable" \
    && apt-get update \
    && apt-get install -y docker-ce=$(apt-cache madison docker-ce | grep 18.06 | head -1 | awk '{print $3}')

systemctl daemon-reload
systemctl stop docker

usermod -aG docker vagrant

systemctl start docker
apt-get autoremove -y

docker rm $(docker ps -a -q)