#!/bin/sh

# a container is running as long as the process it started inside the container is still running
docker container run alpine hostname

# after run container remains in the 'Exited' state
docker container ls -all