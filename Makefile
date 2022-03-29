.PHONY: help
## help: prints this help message
help:
	@echo "Usage:"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: start
## start: starts the development environment and fetch dependencies
start:
	@echo "Starting environment ~"
	@docker-compose up -d

.PHONY: shell
## shell: opens a shell in the container
shell:
	@docker-compose exec linux bash
