# Dockerfile - simple python container
FROM python:3.11-slim

# copy app
WORKDIR /app
COPY code.py .

# run on container start
CMD ["python", "code.py"]

