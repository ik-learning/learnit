#!/bin/bash

echo "========================="
echo "== SWARM USERS & TEAMS =="
echo "========================="

docker run --rm docker/dtr install \
  --ucp-node worker-1  \
  --ucp-username admin \
  --ucp-url https://192.168.5.2 \
  --ucp-password adminadmin \
  --ucp-username admin \
  --ucp-insecure-tls