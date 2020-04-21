#!/usr/bin/sh
cd $(dirname $0)
. $(pwd)/env.sh

docker stop $APP
