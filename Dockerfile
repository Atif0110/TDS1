# Use an official Python runtime as base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy only requirements.txt first for caching
COPY requirements.txt .

# Install dependencies (ignore cache to prevent issues)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Command to run the app
CMD ["python", "main.py"]
