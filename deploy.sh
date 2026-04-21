#!/bin/bash

echo "Stopping existing containers..."
docker-compose down

echo "Deploying application..."
docker-compose up -d --build

echo "Application deployed successfully!"
