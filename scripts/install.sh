#!/bin/bash

## set exit on error
set -e

# install s3cmd
apk update
apk add --no-cache git ca-certificates
apt-get update && apt-get -y install libmagic1
pip install python-magic
git clone --depth 1 --branch v2.4.0 https://github.com/s3tools/s3cmd.git /tmp/s3cmd
cd /tmp/s3cmd
python setup.py install
apk del git
rm -rf /tmp/s3cmd
