#!/bin/bash

## set exit on error
set -e

## get args
s3cmdCommand=$1
accessKey=$2
secretKey=$3
hostBase=$4
bucketLocation=$5

cp /.s3cfg /github/home/.s3cfg

sed -i s/{{BUCKET_LOCATION}}/${bucketLocation}/g /github/home/.s3cfg
sed -i s/{{HOST_BASE}}/${hostBase}/g /github/home/.s3cfg
sed -i s/{{ACCESS_KEY}}/${accessKey}/g /github/home/.s3cfg
sed -i s/{{SECRET_KEY}}/${secretKey}/g /github/home/.s3cfg

s3cmd ${s3cmdCommand}

rm -rf /github/home/.s3cfg
