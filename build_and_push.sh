#!/bin/bash

# Check if the version argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

# Assign the first argument to a variable
VERSION=$1

# Define image names
IMAGE1="mriffle/casanovo:${VERSION}"
IMAGE2="quay.io/protio/casanovo:${VERSION}"

# Build the Docker image with the specified version
sudo docker build --build-arg CASANOVO_VERSION=${VERSION} -t ${IMAGE1} -t ${IMAGE2} .

# Push the Docker images to the repositories
sudo docker push ${IMAGE1}
sudo docker push ${IMAGE2}

