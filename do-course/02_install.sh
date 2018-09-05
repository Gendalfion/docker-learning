#!/bin/sh

# Docker installation
sudo apt-get install -y docker-engine

# Check if docker is up & running
sudo systemctl status docker
