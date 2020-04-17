#!/bin/sh

current=$PWD

for i in $(find */ -name build-run.sh)
do
    cd $(dirname $i)
    ./build-run.sh
    ./commit.sh
    ./stop.sh
    cd $current
done

sleep 40