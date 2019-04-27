#!/bin/bash

# Test docker images
docker run --rm hello-world
docker run --rm alpine cat /etc/resolv.conf
docker run --rm alpine ping -c1 8.8.8.8