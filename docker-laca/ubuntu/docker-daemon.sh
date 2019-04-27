#!/bin/bash

systemctl stop docker

# cat >/etc/docker/daemon.json <<'EOF'
# {
#     "debug": false,
#     "storage-driver": "overlay2"
# }
# EOF

cp /vagrant/conf/daemon.default.json /etc/docker/daemon.json

systemctl daemon-reload
systemctl start docker
