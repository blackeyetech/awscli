# Dockerfile for awscli
FROM alpine:3.10.1

LABEL maintainer="Black Eye Technology"

RUN apk update && \
    apk add python py-pip groff less && \
    pip install awscli && \
    adduser -D aws && \
    mkdir -p /home/workdir && \
    chown aws /home/workdir

WORKDIR /home/workdir
VOLUME /home/workdir

USER aws

ENTRYPOINT ["aws"]