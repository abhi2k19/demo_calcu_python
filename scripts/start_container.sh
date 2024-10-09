#!/bin/bash

set -e

# Pull the docker image from dockerhub
docker pull abhijithas1999/demo_calcu_python

# Run the docker image as a container

docker run -d -p 8000:8000 abhijithas1999/demo_calcu_python
