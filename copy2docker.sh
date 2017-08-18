#!/usr/bin/env bash
VERSION="1.7.0"
cd dist
unzip lts-${VERSION}-bin.zip
cp -r lts-${VERSION}-bin/war ../docker/lts-admin/data/
