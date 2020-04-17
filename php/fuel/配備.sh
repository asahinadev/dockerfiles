#!/bin/sh

ls -1d centos6/*/ | xargs -n 1 cp -pv .env build-run.sh stop.sh commit.sh entrypoint.sh
ls -1d centos7/*/ | xargs -n 1 cp -pv .env build-run.sh stop.sh commit.sh entrypoint.sh
ls -1d centos8/*/ | xargs -n 1 cp -pv .env build-run.sh stop.sh commit.sh startup.sh

