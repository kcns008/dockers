#!/usr/bin/env bash
export REGISTRY=yakworks
BASE_URL="$REGISTRY/builder"
TAG="$BASE_URL:node-jdk11"

#does not work on arm yet
export DOCKER_DEFAULT_PLATFORM=linux/amd64  
#build it locally first
docker build -t $TAG .
# push, when arm working do the build x
docker push "$TAG"

# docker buildx build \
# --push \
# --platform linux/arm64,linux/amd64 \
# --tag $TAG .
