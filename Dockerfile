FROM python:3.8-slim

#RUN mkdir /app
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/main.py"]

# # syntax=docker/dockerfile:1.4
# FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

# WORKDIR /app

# COPY requirements.txt /app
# RUN --mount=type=cache,target=/root/.cache/pip \
#     pip3 install -r requirements.txt

# COPY . /app