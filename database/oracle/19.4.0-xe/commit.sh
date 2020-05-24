#!/usr/bin/sh
cd $(dirname $0)
. $(pwd)/env.sh

docker login
docker build -t $APP .
docker tag $APP $TAG
docker push $TAG
