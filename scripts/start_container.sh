#!/bin/bash

set -e

# Define variables
IMAGE_NAME="abhijithas1999/demo_calcu_python:latest"
CONTAINER_NAME="demo_calcu_container"
PORT=8000

# Pull the docker image from Docker Hub
echo "Pulling Docker image..."
docker pull "$IMAGE_NAME"

# Check if the container is already running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping the running container..."
    docker stop "$CONTAINER_NAME"
    echo "Removing the old container..."
    docker rm "$CONTAINER_NAME"
fi

# Run the docker image as a new container
echo "Starting new container..."
docker run -d --name "$CONTAINER_NAME" -p "$PORT:$PORT" "$IMAGE_NAME"

echo "Container '$CONTAINER_NAME' is now running on port $PORT."

