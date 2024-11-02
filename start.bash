#!/bin/bash

# Allow access
xhost +local:docker

# Run Docker command
# sudo docker start <container name> && sudo docker exec -it <container name> /bin/bash 
sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "/home/christopher/Desktop/ROB456_IntelligentRobots:/home/ROB456" ros_noetic_custom
