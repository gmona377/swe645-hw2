# Purpose: Build a Docker image that serves my HW1 website using Nginx.

FROM nginx:latest

COPY . /usr/share/nginx/html

EXPOSE 80