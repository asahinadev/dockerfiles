export REPOSITORY=$(basename $(dirname $PWD))
export VERSION=$(basename $PWD)
export APP=${REPOSITORY}_${VERSION}
export TAG=asahinadev/${REPOSITORY}:${VERSION}