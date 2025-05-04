#!/bin/bash

# Set variables
DOCKERFILE="context7.dockerfile"
IMAGE_NAME="context7-mcp"

# Get directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Building ${IMAGE_NAME} Docker image from ${DOCKERFILE}..."

# Navigate to the directory containing the Dockerfile
cd "${SCRIPT_DIR}"

# Build the Docker image
docker build -t ${IMAGE_NAME} -f ${DOCKERFILE} .

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "${IMAGE_NAME} Docker image built successfully!"
else
    echo "Error: Failed to build ${IMAGE_NAME} Docker image."
    exit 1
fi

exit 0
