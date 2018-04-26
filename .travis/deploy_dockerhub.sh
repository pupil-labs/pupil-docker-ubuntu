#!/bin/sh

# dockerhub organization name does not match github org name
# hardcoding the repo slug for debugging
DOCKERHUB_REPO_SLUG="pupillabs/pupil-docker-ubuntu"

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t $DOCKERHUB_REPO_SLUG:$TAG .
docker push $DOCKERHUB_REPO_SLUG

