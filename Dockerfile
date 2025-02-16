# Single argument (correct)
FROM python:3.9

# Three arguments (correct)
FROM python:3.9 AS builder


# Set the working directory in the container
WORKDIR /app

# Ensure pip is up to date before installing packages
RUN apt-get update && apt-get install -y python3 python3-pip && pip install --upgrade pip

# Copy project files first
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the app
CMD ["python", "main.py"]
