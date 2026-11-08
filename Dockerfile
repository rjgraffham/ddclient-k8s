FROM docker.io/library/alpine:latest@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/ddclient-k8s
LABEL org.opencontainers.image.description="ddclient container designed for use in kubernetes"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add ddclient

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
