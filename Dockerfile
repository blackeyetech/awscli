# Dockerfile for ttyd
FROM alpine:3.9.4

LABEL maintainer="Black Eye Technology"

RUN apk update && \
    apk add python py-pip groff less && \
    pip install awscli && \
    adduser -D aws

USER aws
WORKDIR /home/aws
VOLUME /home/aws

ENTRYPOINT ["aws"]