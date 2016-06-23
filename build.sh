#!/bin/bash

set -x
push=false

while getopts qp opt; do
  case $opt in
  p)
      push=true
      ;;
  esac
done

IMAGE=build-snapr
TAG=latest

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Tagging previous with timestamp"
if [[ "$(docker images -q $IMAGE:$TAG 2> /dev/null)" == "" ]]; then
    docker tag -f $IMAGE:$TAG $IMAGE:$TAG-$current_time
fi
docker build -t $IMAGE:$TAG .
#push
if $push; then
    docker push $IMAGE:$TAG
fi
