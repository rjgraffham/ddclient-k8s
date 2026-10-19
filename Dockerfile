FROM docker.io/library/alpine:latest@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/ddclient-k8s
LABEL org.opencontainers.image.description="ddclient container designed for use in kubernetes"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add ddclient

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
