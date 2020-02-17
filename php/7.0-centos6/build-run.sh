#!/usr/bin/sh

app=php70-c6
tag=asahinadev/php:7.0-centos6

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -p 10080:80 $app

docker login
docker tag    $app $tag
docker push        $tag