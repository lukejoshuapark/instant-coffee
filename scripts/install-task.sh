#!/bin/sh

curl -L -O https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_linux_${TARGETARCH}.tar.gz || exit 1
tar -xzf task_linux_${TARGETARCH}.tar.gz || exit 1
mv task /usr/bin/task || exit 1
rm task_linux_${TARGETARCH}.tar.gz || exit 1
