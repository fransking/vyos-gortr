#!/bin/bash

docker build \
--no-cache \
-t fransking/vyos-gortr .
docker image inspect fransking/vyos-gortr --format='{{.Size}}'
