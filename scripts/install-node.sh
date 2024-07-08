#!/bin/sh

ARCH_SUFFIX=x64
if [ "$TARGETARCH" = "arm64" ]; then
	ARCH_SUFFIX="arm64"
fi

curl -L -O https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${ARCH_SUFFIX}.tar.xz || exit 1
tar -xf node-v${NODE_VERSION}-linux-${ARCH_SUFFIX}.tar.xz || exit 1
mv node-v${NODE_VERSION}-linux-${ARCH_SUFFIX} /usr/bin/node || exit 1
rm node-v${NODE_VERSION}-linux-${ARCH_SUFFIX}.tar.xz || exit 1
