#! /bin/bash

git submodule update --recursive --remote

sudo docker network create --subnet=172.19.0.0/16 boxinity-net

./build.django.sh && ./run.django.sh
./build.node.sh && ./run.node.sh
