# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY ./src ./src
COPY requirements.txt .

# Install dependencies (none needed, but this keeps it standard)
RUN pip install --no-cache-dir -r requirements.txt

# Set default command
CMD ["python", "src/hello.py"]
