#!/usr/bin/sh

app=php_7.1-centos6
tag=asahinadev/php:7.1-centos6

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -P $app

docker login
docker tag    $app $tag
docker push        $tag