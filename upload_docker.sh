#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=anhntpdev/project-ml-microservice-api

# Step 2:  
# Authenticate & tag
docker login -u "anhntp" -p "t64NeyTa#" docker.io
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
