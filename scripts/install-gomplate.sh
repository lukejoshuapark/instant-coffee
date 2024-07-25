#!/bin/sh

curl -L -O https://github.com/hairyhenderson/gomplate/releases/download/v${GOMPLATE_VERSION}/gomplate_linux-${TARGETARCH} || exit 1
mv gomplate_linux-${TARGETARCH} /usr/bin/gomplate || exit 1
chmod u+x /usr/bin/gomplate || exit 1
