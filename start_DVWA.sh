#!/bin/bash

# Check if Docker is installed
if command -v docker &> /dev/null; then
    echo "Docker is already installed. Starting DVWA...."
else
    # Install Docker
    echo "Docker is not installed. Installing..."
    curl https://get.docker.com/ | sh
fi
service docker start
docker run --rm --name DVWA -it -p 1337:80 vulnerables/web-dvwa
