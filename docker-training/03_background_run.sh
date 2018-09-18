#!/bin/sh

# run a background MySQL container
docker container run --detach --name mydb -e MYSQL_ROOT_PASSWORD=password mysql:latest

# list the running containers
docker container ls

# see what happening with container
docker container logs mydb
docker container top mydb

# run a command inside the container
docker exec -it mydb mysql --user=root --password=$MYSQL_ROOT_PASSWORD --version

# run shell for the container 
docker exec -it mydb sh

