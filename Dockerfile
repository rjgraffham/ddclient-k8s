FROM docker.io/library/alpine:latest@sha256:3f4d6b32e26703c6082839234f43769d5046b3ac7c910033911d1e71d8cd630a

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/ddclient-k8s
LABEL org.opencontainers.image.description="ddclient container designed for use in kubernetes"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add ddclient

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
