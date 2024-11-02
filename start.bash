#!/bin/bash

# Allow access
xhost +local:docker

# Run Docker command
sudo docker start <container name> && sudo docker exec -it <container name> /bin/bash 

# Revoke access after the container exits
# xhost -local:docker
