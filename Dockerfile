# Use official Python image as base
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy all files from your GitHub repo to the container
COPY . .

# Run your script
CMD ["python", "main.py"]
