#!/usr/bin/sh

app=php_7.1-centos7
tag=asahinadev/php:7.1-centos7

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -p 10080:80 $app

docker login
docker tag    $app $tag
docker push        $tag