#!/bin/sh

ls -1d */*/ | xargs -n 1 cp -pv .env build-run.sh stop.sh commit.sh entrypoint.sh
