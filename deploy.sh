#!/bin/bash
#gonna push image  to docker hub repository in this deploy.sh 

docker-compose up -d

#stagging the image to docker hub registry to dev repo
docker tag reactimage  suryaln/dev          

#pushing image to dockerhub registry
docker push suryaln/dev

echo "The Image has been pushed to Dev Repository in DockerHub Registry!!! "     
