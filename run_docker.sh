!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t anhntp/project-ml-microservice-api .
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
docker run --name microservices-api -d -p 8080:80 anhntp/project-ml-microservice-api