#!/bin/sh

curl -L -O https://github.com/hairyhenderson/gomplate/releases/download/v${GOMPLATE_VERSION}/gomplate_linux-${TARGETARCH} || exit 1
mv gomplate_linux-${TARGETARCH} /usr/local/bin/gomplate || exit 1
chmod u+x /usr/local/bin/gomplate || exit 1
