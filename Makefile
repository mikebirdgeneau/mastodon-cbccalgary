.DEFAULT_GOAL := all

config.toml:
	cp config.toml.sample config.toml
	@echo "Please edit config.toml with your own settings."

.PHONY: build
build:
	cargo build --release

.PHONY: run
run: config.toml
	./target/release/mastodon-rss

.PHONY: all
all: build run
