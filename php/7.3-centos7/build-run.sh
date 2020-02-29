#!/usr/bin/sh

app=php_7.3-centos7
tag=asahinadev/php:7.3-centos7

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -P $app

docker login
docker tag    $app $tag
docker push        $tag