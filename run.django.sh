#! /bin/bash

NAME=boxinity-backend 
NET=boxinity-net
TAG=0.1 
IP=172.19.0.12

sudo docker stop $NAME
sudo docker rm $NAME
sudo docker run -p 8000:8000 --net $NET --ip $IP --name $NAME -d $NAME:$TAG
