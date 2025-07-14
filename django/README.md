
# Nitric Python Example Project (pip version)

## Step 1: Create and activate a virtual environment using `pip` and `venv`

```bash
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
```

## Step 2: Run your application with Nitric

```bash
nitric start
```

This will start your Django application using the script defined in `nitric.yaml`:

```yaml
script: python manage.py runserver 0.0.0.0:$PORT
```

## Step 3: Testing

```bash
curl -X POST http://localhost:4000/write/test-object.txt \
  -H "Content-Type: text/plain" \
  --data "Hello from curl!"

curl http://localhost:4000/read/test-object.txt
```