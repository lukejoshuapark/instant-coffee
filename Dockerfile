
# Start with Ubuntu.
ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION} AS build
ARG TARGETARCH

ARG DOCKER_VERSION=27.0.3
ARG DOCKER_COMPOSE_VERSION=2.28.1
ARG GOLANG_VERSION=1.22.5
ARG LAZYGIT_VERSION=0.42.0
ARG MIGRATE_VERSION=4.17.1
ARG NODE_VERSION=20.15.0
ARG RUST_VERSION=1.79.0
ARG TASK_VERSION=3.38.0
ARG TERRAFORM_VERSION=1.9.1

ARG PACKAGES="git unzip zip gcc xz-utils jq curl"

# Install packages.
RUN apt update
RUN apt upgrade -y
RUN apt install -y ${PACKAGES}

# Install Docker and Docker Compose Plugin.
COPY ./scripts/install-docker.sh ./
RUN chmod u+x ./install-docker.sh && ./install-docker.sh && rm ./install-docker.sh

# Install Go.
COPY ./scripts/install-go.sh ./
RUN chmod u+x ./install-go.sh && ./install-go.sh && rm ./install-go.sh

# Install lazygit.
COPY ./scripts/install-lazygit.sh ./
RUN chmod u+x ./install-lazygit.sh && ./install-lazygit.sh && rm ./install-lazygit.sh

# Install migrate.
COPY ./scripts/install-migrate.sh ./
RUN chmod u+x ./install-migrate.sh && ./install-migrate.sh && rm ./install-migrate.sh

# Install Node.
COPY ./scripts/install-node.sh ./
RUN chmod u+x ./install-node.sh && ./install-node.sh && rm ./install-node.sh

# Install Rust.
COPY ./scripts/install-rust.sh ./
RUN chmod u+x ./install-rust.sh && ./install-rust.sh && rm ./install-rust.sh

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
ENV PATH="/usr/bin/go/bin:$PATH"
