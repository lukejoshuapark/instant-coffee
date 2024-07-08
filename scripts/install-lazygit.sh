#!/bin/sh

ARCH_SUFFIX="x86_64"
if [ "$TARGETARCH" = "arm64" ]; then
	ARCH_SUFFIX="arm64"
fi

curl -L -O https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_${ARCH_SUFFIX}.tar.gz || exit 1
tar -xzf lazygit_${LAZYGIT_VERSION}_Linux_${ARCH_SUFFIX}.tar.gz || exit 1
mv lazygit /usr/bin || exit 1
rm lazygit_${LAZYGIT_VERSION}_Linux_${ARCH_SUFFIX}.tar.gz || exit 1
