#!/bin/bash

systemctl stop docker

cp /vagrant/conf/daemon.default.json /etc/docker/daemon.json

systemctl daemon-reload
systemctl start docker

sleep 2