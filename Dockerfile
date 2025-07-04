# Start with Ubuntu.
ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION} AS build
ARG TARGETARCH

ARG AWSCLI_VERSION=2.27.47
ARG CARGO_LAMBDA_VERSION=1.8.5
ARG DOCKER_VERSION=28.3.0
ARG DOCKER_COMPOSE_VERSION=2.37.3
ARG GOLANG_VERSION=1.24.4
ARG GOMPLATE_VERSION=4.3.2
ARG LAZYGIT_VERSION=0.52.0
ARG MIGRATE_VERSION=4.18.3
ARG NODE_VERSION=22.17.0
ARG RUST_VERSION=1.88.0
ARG TASK_VERSION=3.44.0
ARG TERRAFORM_VERSION=1.12.2
ARG PACKAGES="git unzip zip gcc xz-utils jq curl python3 python3-pip python3-venv build-essential"

# Install packages.
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ${PACKAGES}
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# Install AWS CLI.
COPY ./scripts/install-aws-cli.sh ./
RUN chmod u+x ./install-aws-cli.sh && ./install-aws-cli.sh && rm ./install-aws-cli.sh

# Install cargo-lambda.
COPY ./scripts/install-cargo-lambda.sh ./
RUN chmod u+x ./install-cargo-lambda.sh && ./install-cargo-lambda.sh && rm ./install-cargo-lambda.sh

# Install Docker and Docker Compose Plugin.
COPY ./scripts/install-docker.sh ./
RUN chmod u+x ./install-docker.sh && ./install-docker.sh && rm ./install-docker.sh

# Install Go.
COPY ./scripts/install-go.sh ./
RUN chmod u+x ./install-go.sh && ./install-go.sh && rm ./install-go.sh

# Install gomplate.
COPY ./scripts/install-gomplate.sh ./
RUN chmod u+x ./install-gomplate.sh && ./install-gomplate.sh && rm ./install-gomplate.sh

# Install lazygit.
COPY ./scripts/install-lazygit.sh ./
RUN chmod u+x ./install-lazygit.sh && ./install-lazygit.sh && rm ./install-lazygit.sh

# Install migrate.
COPY ./scripts/install-migrate.sh ./
RUN chmod u+x ./install-migrate.sh && ./install-migrate.sh && rm ./install-migrate.sh

# Install ngrok.
COPY ./scripts/install-ngrok.sh ./
RUN chmod u+x ./install-ngrok.sh && ./install-ngrok.sh && rm ./install-ngrok.sh

# Install Node.
COPY ./scripts/install-node.sh ./
RUN chmod u+x ./install-node.sh && ./install-node.sh && rm ./install-node.sh

# Install Rust.
COPY ./scripts/install-rust.sh ./
RUN chmod u+x ./install-rust.sh && ./install-rust.sh && rm ./install-rust.sh

# Install sqlx-cli.
COPY ./scripts/install-sqlx-cli.sh ./
RUN chmod u+x ./install-sqlx-cli.sh && ./install-sqlx-cli.sh && rm ./install-sqlx-cli.sh

# Install task.
COPY ./scripts/install-task.sh ./
RUN chmod u+x ./install-task.sh && ./install-task.sh && rm ./install-task.sh

# Install Terraform.
COPY ./scripts/install-terraform.sh ./
RUN chmod u+x ./install-terraform.sh && ./install-terraform.sh && rm ./install-terraform.sh

# Setup Git autocomplete and a nice prompt.
COPY ./scripts/git-setup.sh /git-setup.sh
RUN cat /git-setup.sh >> /root/.bashrc
RUN rm /git-setup.sh

# Squash everything together.
FROM scratch
COPY --from=build / /
ENV HOME="/root"
ENV PATH="/root/.cargo/bin:/usr/bin/go/bin:/usr/bin/node/bin:$PATH"
ENV CARGO_TARGET_DIR="/target"
