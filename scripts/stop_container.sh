#!/bin/bash
set -e

# Get the container ID of the running container
containerId=$(docker ps -q)

# Check if the container ID is not empty
if [ -n "$containerId" ]; then
    echo "Stopping and removing container with ID: $containerId"
    docker rm -f "$containerId"
else
    echo "No running container found."
fi

