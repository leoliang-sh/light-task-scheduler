# !/usr/bin/env bash
set -ex

unzip lts-*.zip

rm -rf lts-admin/war
rm -rf lts-jobtracker/lib

cp -r lts-*/war lts-admin/war
cp -r lts-*/lib lts-jobtracker/lib

rm -rf lts-*-bin/