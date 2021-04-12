# S3cmd GitHub action

This repository provides a simple GitHub action that allows you to run command with the [S3cmd](https://github.com/s3tools/s3cmd).


## Basic example

This simple example shows you how to run the simple `ls` command with the `S3cmd` cli. 
The command should list all your buckets.

```yaml
name: Run S3cmd
on: push

jobs:
  listBuckets:
    runs-on: ubuntu-latest
    
    steps:
      - name: Run S3cmd
        uses: edjufy/s3cmd-github-action@v1.0.0
        with:
          s3cmd_command: 'ls'
          access_key: ${{ secrets.S3_ACCESS_KEY }}
          secret_key: ${{ secrets.S3_SECRET_KEY }}
          host_base: 's3.amazonaws.com'
          bucket_location: 'US'
```

## Inputs

| Name            | Description                       | Required | Default          |
|-----------------|-----------------------------------|----------|------------------|
| s3cmd_command   | Command to run with the s3cmd cli | Yes      |                  |
| access_key      | your access key                   | Yes      |                  |
| secret_key      | your secret key                   | Yes      |                  |
| host_base       | your s3 hostname                  | No       | s3.amazonaws.com |
| bucket_location | your s3 bucket location           | No       | US               |
