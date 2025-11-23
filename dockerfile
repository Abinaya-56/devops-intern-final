FROM python:3.11-slim

WORKDIR /app
COPY code.py .

CMD ["python", "code.py"]

