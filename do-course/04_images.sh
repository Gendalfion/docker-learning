#!/bin/sh

# Check if images could be loaded from Docker Hub
docker run hello-world

# Search for images on Docker Hub
docker search ubuntu

# See all currently installed images
docker images

# Interactive container access
docker run -it ubuntu

# Inside container you can do changes
# apt-get update
# apt-get install -y nodejs
# exit

# To save the changes to image you must commit it  vvvvvvv  - container id (what you see in promt inside container or)
docker commit -m "added node.js" -a "Gendalfion" 3e3d4f9fe88a gendalfion/ubuntu-nodejs

# Print the status of all containers
docker ps -a

# Print the status of last created container
docker ps -l 

# Stop container
docker stop 3e3d4f9fe88a