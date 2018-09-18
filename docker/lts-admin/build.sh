#!/usr/bin/env bash
set -ex
VERSION=2.0.0

docker build -t registry.cn-hangzhou.aliyuncs.com/ky-edu/lts-admin:$VERSION .
docker push registry.cn-hangzhou.aliyuncs.com/ky-edu/lts-admin:$VERSION
