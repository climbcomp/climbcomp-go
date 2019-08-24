version := $(shell cat VERSION)

# CI targets

.PHONY: build
build:
	docker-compose build --build-arg VERSION=$(version) app

.PHONY: test
test:
	@echo "TODO"

.PHONY: release
release:
	docker-compose run --rm app ./scripts/release

# local targets

.PHONY: bash
bash:
	docker-compose run --rm app bash

.PHONY: run
run:
	docker-compose run --rm app climbcomp
