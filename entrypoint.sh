#!/bin/sh

mkdir -p /etc/ddclient
cp /config/* /etc/ddclient/
chmod -R 400 /etc/ddclient

ddclient --foreground "$@"
