#!/bin/bash
#gonna push image  to docker hub repository in this deploy.

docker-compose up -d

#stagging the image to docker hub registry
docker tag reactimage suryaln/prod    

 # pushing image to prod repo in dockerhub registry
docker push suryaln/prod

echo "The image has been pushed to Prod repository in DockerHub Registry!!! "                                                                                                                                               
