#!/bin/sh

ARCH_SUFFIX=x86_64
if [ "$TARGETARCH" = "arm64" ]; then
	ARCH_SUFFIX="aarch64"
fi

curl -L -O https://github.com/cargo-lambda/cargo-lambda/releases/download/v${CARGO_LAMBDA_VERSION}/cargo-lambda-v${CARGO_LAMBDA_VERSION}.${ARCH_SUFFIX}-unknown-linux-musl.tar.gz || exit 1
tar -xzf cargo-lambda-v${CARGO_LAMBDA_VERSION}.${ARCH_SUFFIX}-unknown-linux-musl.tar.gz || exit 1
mv cargo-lambda /usr/bin/cargo-lambda || exit 1
chmod u+x /usr/bin/cargo-lambda || exit 1
