#!/bin/sh

curl -L -O https://download.docker.com/linux/ubuntu/dists/resolute/pool/stable/${TARGETARCH}/docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1
dpkg -i docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1
rm docker-ce-cli_${DOCKER_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1

curl -L -O https://download.docker.com/linux/ubuntu/dists/resolute/pool/stable/${TARGETARCH}/docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1
dpkg -i docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1
rm docker-compose-plugin_${DOCKER_COMPOSE_VERSION}-1~ubuntu.26.04~resolute_${TARGETARCH}.deb || exit 1
