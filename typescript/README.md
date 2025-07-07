# Nitric Python Example Project

## Step 1: Create and activate a virtual environment using `uv`

```bash
npm install
```

## Step 2: Testing

```nitric dev```

```bash
curl -X POST http://localhost:4000/write/test-object.txt \
  -H "Content-Type: text/plain" \
  --data "Hello from curl!"

curl http://localhost:4000/read/test-object.txt
```
