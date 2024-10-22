version2:
	@echo "==[rustc: compiler]===="
	@rustc --version
	@echo ""
	@echo "==[rustup: toolchain installer]===="
	@rustup --version
	@echo ""
	@echo "==[cargo: package manager]===="
	@cargo --version
	@echo ""
	@echo "==[rustfmt: code formatter rustfmt]===="
	@rustfmt --version
	@echo ""
	@echo "==[clippy: code checker]===="
	@cargo clippy --version
	@echo ""

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

format:
	cargo fmt --verbose

lint:
	cargo clippy

build:
	cargo build

release:
	cargo build --release

# make run args="-- arg1 arg2"
run:
	cargo run $(args)

test:
	cargo test

clean:
	cargo clean

all: format lint test run
