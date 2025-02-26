#!/bin/sh

curl -L -O https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-${TARGETARCH}.tgz || exit 1
tar -xf ngrok-v3-stable-linux-${TARGETARCH}.tgz || exit 1
mv ngrok /usr/bin/ngrok || exit 1
rm ngrok-v3-stable-linux-${TARGETARCH}.tgz || exit 1
