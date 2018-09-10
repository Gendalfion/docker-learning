#!/bin/sh

# run docker container and access its shell ('docker run --help' for more info)
docker container run --interactive --tty --rm ubuntu bash

# inside container run
# ls /
# ps aux
# cat /etc/issue