#!/bin/bash

cd /vagrant/dockerfiles
docker build -t myhttpd:v1 .
docker run -d --name testweb -p 80:80 myhttpd:v1
docker stark deploy --compose-file docker-compose.yaml mycustomstack