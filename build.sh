#!/bin/bash

set -e

cd /home/ubuntu/devops-build   # 👈 your project folder

echo "Installing dependencies..."
npm install

echo "Building project..."
npm run build

echo "Done"
