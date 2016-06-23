#!/bin/bash

set -x

IMAGE=build-snapr:latest
SOURCE=/home/john/snap-project/snapr
NAME=build-snapr

docker run -it -v $SOURCE:/snapr --name=$NAME $IMAGE

docker rm $NAME

sudo chown -R $(/usr/bin/id -run):$(/usr/bin/id -run) $SOURCE
