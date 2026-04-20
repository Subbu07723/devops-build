#!/bin/bash
set -e

echo "Building Docker image..."

docker build -t my-app:latest .

echo "Build completed!"
