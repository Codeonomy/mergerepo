# Use a slim Python 3.8 image as base
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of the "app" directory (where your Python code and requirements.txt live)
COPY app/ .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the application
EXPOSE 5000

# Define the default command to run your app
CMD ["python", "main.py"]

# FROM python:3.8-slim

# #RUN mkdir /app
# WORKDIR /app
# ADD . /app
# RUN pip install -r requirements.txt

# EXPOSE 5000
# CMD ["python", "/app/main.py"]

# # syntax=docker/dockerfile:1.4
# FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

# WORKDIR /app

# COPY requirements.txt /app
# RUN --mount=type=cache,target=/root/.cache/pip \
#     pip3 install -r requirements.txt

# COPY . /app