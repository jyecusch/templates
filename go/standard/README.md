# Nitric Go Example Project

A Go web service template using the Nitric framework for cloud resource access.

## Prerequisites
- Go 1.20+
- [Nitric CLI](https://nitric.io/docs/installation)

## Setup

### Build the Nitric SDK
```bash
make generate
```

### Install dependencies
```bash
go mod tidy
go mod download
```

## Running the Application (Development)
```bash
nitric dev
```
This will start your Go application using the script defined in `nitric.yaml`:
```yaml
script: go run main.go
```

## Example Usage
Write and read a greeting:
```bash
curl http://localhost:4000/hello/world
``` 