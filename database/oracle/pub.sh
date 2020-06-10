#!/bin/sh

find */ -name *.sh | xargs rm -rfv

chmod +x *.sh
ls -1d */ | xargs -n 1 cp -pv build-run.sh commit.sh env.sh remove.sh stop.sh




