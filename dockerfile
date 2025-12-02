FROM python:3.11-slim

WORKDIR /app

# Copy requirements before copying src
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY ./src ./src

EXPOSE 9000

# Use gunicorn in production
CMD ["gunicorn", "--bind", "0.0.0.0:1000", "src.hello:app"]
