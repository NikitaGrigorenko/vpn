#!/bin/bash

# Build the Docker image
docker build -t vpn-service .

# Run the Docker container with host network mode
sudo docker run --privileged --rm --net=host -it vpn-service
