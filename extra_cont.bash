#!/bin/bash

# Allow access
xhost +local:docker

# Run Docker command
container_id=$(sudo docker container ls -a | awk 'NR==2 {print $1}')
sudo docker container ls -a

#echo $container_id

# Run Docker command
sudo docker start $container_id  && sudo docker exec -it $container_id  /bin/bash 
