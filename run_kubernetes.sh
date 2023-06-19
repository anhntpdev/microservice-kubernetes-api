#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=anhntp/project-ml-microservice-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl create deploy microservices-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get nodes
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/microservices-api --address 0.0.0.0 8082:80