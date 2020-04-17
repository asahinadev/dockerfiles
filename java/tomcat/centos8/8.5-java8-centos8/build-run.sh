#!/usr/bin/sh

. .env

function error_handler() {
    if [ $1 -gt 0 ]; then
        echo '直前の処理にてエラーが発生したため中断します。'
        exit $1
    fi
}

docker stop $APP

docker build -t $APP .
error_handler $?

docker run --name $APP -d -P --rm $APP
error_handler $?
