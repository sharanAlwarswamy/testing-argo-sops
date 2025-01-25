# Base image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy files
COPY requirements.txt ./
COPY app/ ./app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app/app.py"]
