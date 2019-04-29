#!/bin/bash

echo "=========================================="
echo "== SWARM UNIVERSaL CONTROL PLANE INSTALL =="
echo "=========================================="

varion="3.1.6"
ip="$1"
licence="$2"

docker container run --rm --name ucp -v /var/run/docker.sock:/var/run/docker.sock docker/ucp:2.2.4 \
  install --host-address $ip \
  --admin-username admin \
  --admin-password adminadmin \
  --san ucp.example \
  --san manager \
  --san $ip \
  --license $(cat ${licence})

