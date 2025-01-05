# Use an official Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install the required packages
RUN pip install -r requirements.txt

# Expose a port (if your app uses one)
EXPOSE 8080

# Define the command to run your app
CMD ["python", "scripts/inference.py"]
