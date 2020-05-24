#!/bin/sh

find */ -name .env | xargs rm -rfv
find */ -name *.sh | xargs rm -rfv

chmod +x *.sh
ls -1d */ | xargs -n 1 cp -pv .env *.sh
find */ -name "_*.sh" | xargs rm -rfv

sleep 10