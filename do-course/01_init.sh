#!/bin/sh

sudo apt-get update

# GPG key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Docker repository
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update

# check repository (check if docker is going to be installed from https://apt.dockerproject.org/repo)
apt-cache policy docker-engine