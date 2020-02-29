#!/usr/bin/sh

REPOSITORY=$(basename $(dirname $PWD))
VERSION=$(basename $PWD)
APP=${REPOSITORY}_${VERSION}
TAG=tag=asahinadev/${REPOSITORY}:${VERSION}

docker stop       $APP
docker rm         $APP
docker build -t   $APP .
docker run --name $APP -d -P $APP

docker login
docker tag    $APP $tag
docker push        $tag