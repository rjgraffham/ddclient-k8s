FROM docker.io/library/alpine:latest@sha256:ce9e1e6d23f04a0b7593445a062a9fc73ed52f8260b9396f77a958295ad18ee7

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/ddclient-k8s
LABEL org.opencontainers.image.description="ddclient container designed for use in kubernetes"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add ddclient

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
