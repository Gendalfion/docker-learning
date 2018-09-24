#!/bin/sh

cd ./docker-training/linux_tweet_app/

cat ./Dockerfile

# just for convenience export you docker id (login to https://cloud.docker.com)
export DOCKERID=<your docker id>

# Use the docker image build command to create a new Docker image using the instructions in the Dockerfile
docker image build --tag $DOCKERID/linux_tweet_app:1.0 .

# Run the built image (map port 80 inside the container to port 80 on the host)
docker container run --detach --publish 80:80 --name linux_tweet_app $DOCKERID/linux_tweet_app:1.0