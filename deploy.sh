#!/bin/bash
#gonna push image  to docker hub repository in this deploy.

docker-compose up -d

#stagging the image to docker hub registry
             #docker tag reactimage suryaln/capstonereactimage

docker tag reactimage  suryaln/dev          

#pushing image to dockerhub registry

docker push suryaln/dev

#docker push suryaln/capstonereactimage

echo "The image has been pushed to DockerHub Registry!!! "     


#docker tag local-image:tagname new-repo:tagname
#docker push new-repo:tagname

#Replace Tagname with desired image  Proximate

#docker push suryaln/dev:tagname
