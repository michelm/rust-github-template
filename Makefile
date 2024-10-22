
version:
	rustc --version
	@echo ""
	rustup --version
	@echo ""
	cargo --version
	@echo ""
	cargo fmt --version
	@echo ""
	cargo clippy --version
	@echo ""

fmt format:
	cargo fmt --all

check lint:
	cargo clippy

build-debug build:
	cargo build

build-release release:
	cargo build --release

# make run args="-- arg1 arg2"
run:
	cargo run $(args)

test:
	cargo test

clean:
	cargo clean

all: format lint test run
