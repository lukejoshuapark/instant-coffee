#!/bin/sh

curl -L -O https://github.com/golang-migrate/migrate/releases/download/v${MIGRATE_VERSION}/migrate.linux-${TARGETARCH}.tar.gz || exit 1
tar -xzf migrate.linux-${TARGETARCH}.tar.gz || exit 1
chmod u+x migrate || exit 1
mv migrate /usr/bin/migrate || exit 1
rm migrate.linux-${TARGETARCH}.tar.gz || exit 1
