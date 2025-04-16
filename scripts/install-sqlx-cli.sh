#!/bin/sh

$HOME/.cargo/bin/cargo install sqlx-cli --no-default-features --features rustls,postgres || exit 1
