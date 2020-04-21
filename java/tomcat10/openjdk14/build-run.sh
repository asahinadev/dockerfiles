#!/usr/bin/sh
cd $(dirname $0)
. $(pwd)/env.sh

docker build -t $APP . && \
docker run --name $APP -d -P --rm $APP

