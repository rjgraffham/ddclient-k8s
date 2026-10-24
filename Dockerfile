FROM docker.io/library/alpine:latest@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/ddclient-k8s
LABEL org.opencontainers.image.description="ddclient container designed for use in kubernetes"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add ddclient

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
