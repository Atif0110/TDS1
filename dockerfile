# Use a base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy only the necessary files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 8000

# Command to run the app
CMD ["python", "main.py"]
