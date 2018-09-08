#!/bin/sh

# By default docker requires root permissions, lets check it by using 'docker info' - common docker reference:
docker info | grep "permission denied"

# To fix this add current user to docker group
sudo usermod -aG docker $(whoami)

# Need to start a new login shell in order of previos command to take offect
su $(whoami)

# Check current user groups with
groups

# Now all should be fine
docker info