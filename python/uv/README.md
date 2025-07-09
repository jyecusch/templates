# Nitric Python FastAPI Example Project

A FastAPI web service template using the Nitric framework for cloud resource access.

## Prerequisites
- Python 3.10+
- [uv](https://github.com/astral-sh/uv)
- [Nitric CLI](https://nitric.io/docs/installation)

## Setup
```bash
uv venv
source .venv/bin/activate
uv sync
```

## Running the Application (Development)
```bash
nitric dev
```
This will start your FastAPI application using the script defined in `nitric.yaml`:
```yaml
script: uv run uvicorn main:app --host 0.0.0.0 --port $PORT
```

## Example Usage
Write an object:
```bash
curl -X POST http://localhost:4000/write/test-object.txt \
  -H "Content-Type: text/plain" \
  --data "Hello from curl!"
```
Read an object:
```bash
curl http://localhost:4000/read/test-object.txt
```
