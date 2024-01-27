#!/bin/bash

#listing container 
docker images
#stoping conatiners which are running
docker stop $(docker ps -aq)
#removing containers
docker rm $(docker ps -aq)

#gonna build docker image
docker build -t reactimage .


