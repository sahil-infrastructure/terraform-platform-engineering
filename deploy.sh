#!/bin/bash

set -e

IMAGE="sahilsinghchib/ecommerce-backend:1.0.0"

echo "Pulling latest image..."
docker pull $IMAGE

echo "Stopping old container..."
docker stop ecommerce-backend || true

echo "Removing old container..."
docker rm ecommerce-backend || true

echo "Starting new container..."
docker run -d \
  --name ecommerce-backend \
  -p 80:5000 \
  --restart unless-stopped \
  $IMAGE

echo "Deployment completed."

docker ps
