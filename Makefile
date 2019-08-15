version := $(shell cat VERSION)

# CI targets

.PHONY: build
build:
	docker-compose build --build-arg VERSION=$(version)

.PHONY: test
test:
	@echo "TODO"

.PHONY: release
release:
	@echo "TODO"

# local targets

.PHONY: bash
bash:
	docker-compose run --rm app bash

.PHONY: run
run:
	docker-compose run --rm app climbcomp
