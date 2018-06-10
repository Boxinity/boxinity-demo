#! /bin/bash

NAME=boxinity-frontend
NET=boxinity-net
TAG=0.1
IP=172.19.0.11

sudo docker stop $NAME
sudo docker rm $NAME
sudo docker run -p 3000:3000 --net $NET --ip $IP --name $NAME -d $NAME:$TAG

