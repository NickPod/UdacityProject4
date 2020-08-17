#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f Dockerfile . -t project4app --label project4app

# Step 2: 
# List docker images
docker image ls --filter label=project4app

# Step 3: 
# Run flask app
docker run -it -p 8000:80 project4app