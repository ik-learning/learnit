#!/bin/bash

set -euo pipefail

echo "============================="
echo "== SWARM WORKER JOIN SWARM =="
echo "============================="

instance_ip="$1"
token="$2"
manager_ip="$3"

docker swarm join --advertise-addr ${instance_ip} --listen-addr ${instance_ip}:2377 --token $(cat ${token}) ${manager_ip}:2377