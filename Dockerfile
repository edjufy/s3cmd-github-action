FROM python:3.9-alpine
LABEL maintainer="dev@edjufy.com"

ADD scripts/install.sh install.sh
RUN sh install.sh && rm install.sh

ADD scripts/main.sh /opt/s3cmd/main.sh
ADD scripts/.s3cfg .s3cfg

WORKDIR /github/home

ENTRYPOINT [ "sh", "/opt/s3cmd/main.sh" ]
