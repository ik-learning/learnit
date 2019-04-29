#!/bin/bash

docker pull httpd
docker run -d --name testweb httpd

docker service create --name testweb -p 80:80 httpd
docker service inspect testweb

docker service scale testweb=3
docker service update --replicas 10 --detach=false testweb

docker service update --limit-cpu=.5 --reserve-cpu=.75 --limit-memory=128m --reserve-memory=256m testweb
docker service create --name testnginx -p 5901:80

