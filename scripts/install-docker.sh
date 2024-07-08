#!/bin/sh

curl -L -O https://download.docker.com/linux/ubuntu/dists/noble/pool/stable/${TARGETARCH}/docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1
dpkg -i docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1
rm docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1

curl -L -O https://download.docker.com/linux/ubuntu/dists/noble/pool/stable/${TARGETARCH}/docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1
dpkg -i docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1
rm docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.24.04~noble_${TARGETARCH}.deb || exit 1
