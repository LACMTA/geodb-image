# Start from a Python base image
FROM python:3.8-slim-buster

# Update the package lists
RUN apt-get update

# Install necessary packages for PostgreSQL and GDAL
RUN apt-get install -y libpq-dev python3-dev libgdal-dev

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY src/ .

# Command to run on container start
CMD [ "/bin/bash" ]