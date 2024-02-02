#!/bin/bash
#gonna push image  to docker hub repository in this deploy.sh 
#run compose file
docker-compose up -d

if [[ $GIT_BRANCH == "origin/dev" ]]; then 
#stagging the image to docker hub registry to dev repo
docker tag reactimage suryaln/dev          

#pushing image to dockerhub registry 
docker push suryaln/dev

echo "The Image has been pushed to Dev Repository in DockerHub Registry!!! "  

elif [[ $GIT_BRANCH == "origin/master" ]]; then
#stagging the image to docker hub registry to dev repo
docker tag reactimage suryaln/prod

#pushing image to prod repo in dockerhub
docker push suryaln/prod

echo "The Image has been pushed to Prod Repository in DockerHub Registry!!! "

fi
