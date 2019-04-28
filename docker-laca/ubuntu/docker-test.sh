#!/bin/bash

# Test docker images
# docker run --rm hello-world
# docker run --rm alpine cat /etc/resolv.conf
# docker run --rm alpine ping -c1 8.8.8.8

docker image pull httpd

echo "Access it"
echo "docker container run -d --name testweb httpd"
echo "docker container inspect testweb | grep IPAddr"
echo "elinks http://<ip>"
echo "Access logs"
