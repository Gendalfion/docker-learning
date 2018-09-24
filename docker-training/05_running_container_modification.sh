#!/bin/sh

cd ./docker-training/linux_tweet_app/

# just for convenience export you docker id (login to https://cloud.docker.com)
export DOCKERID=<your docker id>

# You can map local directory to the specified folder inside the container
docker container run \
 --detach \
 --publish 80:80 \
 --name linux_tweet_app \
 --mount type=bind,source="$(pwd)",target=/usr/share/nginx/html \
 $DOCKERID/linux_tweet_app:1.0

# Check the modification of local files to be reflected on container image
cp index-new.html index.html
cp index-new.html index-original.html