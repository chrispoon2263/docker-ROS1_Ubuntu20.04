#!/bin/bash

# Run Docker command to stop conatiner
sudo docker stop <container name>

# Run Docker Command to ls container
sudo docker conatiner ls -a

# Revoke access after the container exits
xhost -local:docker
