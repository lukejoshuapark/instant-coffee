#!/bin/sh

curl -L -O https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_${TARGETARCH}.zip || exit 1
unzip terraform_${TERRAFORM_VERSION}_linux_${TARGETARCH}.zip || exit 1
mv terraform /usr/bin || exit 1
rm terraform_${TERRAFORM_VERSION}_linux_${TARGETARCH}.zip || exit 1
