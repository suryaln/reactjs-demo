#!/bin/bash
#gonna push image  to docker hub repository in this deploy.

docker-compose up -d

#stagging the image to docker hub registry
docker tag reactimage suryaln/capstonereactimage

#pushing image to dockerhub registry

docker push suryaln/capstonereactimage

echo "The image has been pushed to DockerHub Registry!!! "                                                                                                                                               
