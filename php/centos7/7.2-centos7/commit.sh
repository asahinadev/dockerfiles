#!/usr/bin/sh

. ./.env

function error_handler() {
    if [ $1 -gt 0 ]; then
        echo '直前の処理にてエラーが発生したため中断します。'
        exit $1
    fi
}

docker login
error_handler $?

docker tag $APP $TAG
error_handler $?

docker push $TAG
error_handler $?