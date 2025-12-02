FROM python:3.11-slim

WORKDIR /app

# Copy requirements first
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the src folder
COPY ./src ./src

EXPOSE 9000

# Run with Gunicorn (recommended)
CMD ["gunicorn", "--bind", "0.0.0.0:9000", "src.hello:app"]
