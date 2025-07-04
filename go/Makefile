install: generate
	go mod tidy
	go mod download

generate:
	nitric generate --go --go-out ./nitric --go-package-name nitric

version:
	nitric version

run:
	nitric dev

build:
	nitric build
