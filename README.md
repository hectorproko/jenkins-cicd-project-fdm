# Project Overview
The goal is to create a CI/CD pipeline in Jenkins that triggers on a GitHub commit, builds a Docker image for a simple Python application, and pushes the image to DockerHub. The pipeline consists of three stages:

1. Build Docker Image: Builds a Docker image using the provided Dockerfile.
2. Login to Dockerhub: Authenticates with DockerHub using credentials stored in Jenkins.
3. Push image to Dockerhub: Pushes the built image to your DockerHub repository.ff
