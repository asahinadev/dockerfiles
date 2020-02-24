#!/usr/bin/sh

app=php_7.2-centos8
tag=asahinadev/php:7.2-centos8

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -p 10080:80 $app

docker login
docker tag    $app $tag
docker push        $tag