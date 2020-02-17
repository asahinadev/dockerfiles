#!/usr/bin/sh

app=php_7.4-centos6
tag=asahinadev/php:7.4-centos6

docker stop       $app
docker rm         $app
docker build -t   $app .
docker run --name $app -d -p 10080:80 $app

docker login
docker tag    $app $tag
docker push        $tag