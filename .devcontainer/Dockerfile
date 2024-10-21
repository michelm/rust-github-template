FROM mcr.microsoft.com/vscode/devcontainers/rust:bookworm

RUN rustup install nightly
RUN rustup component add rustfmt --toolchain nightly
RUN rustup component add clippy --toolchain nightly
RUN cargo install cargo-expand cargo-edit
