#/bin/sh

docker build --squash \
  -t charlybronwperez/alpine-node:1 \
  -f slim.dockerfile .
