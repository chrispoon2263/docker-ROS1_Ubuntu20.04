This Dockerfile will install the Robert Operating System on Ubuntu 20.04.
# docker-ROS1_Ubuntu20.04

1. Build the image
	- $ sudo docker build -t ros_noetic_custom .   (<— there’s a dot here don’t forget)


2. Make sure to run to allow docker to use X11 from host machine
	- $ xhost -local:docker 


3. Create a new container with x11 display access
   This will also bind a folder on host system to docker container for data persistence
	- $ sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "/home/christopher/Desktop/ROB456_IntelligentRobots:/home/ROB456" ros_noetic_custom


5. Run multiple instances of that same container (current name of container)
	- $ sudo docker container ls -a 
	- $ sudo docker start <container-name> && sudo docker exec -it <container-name> /bin/bash

## Shows ROS1 inside of container using two different terminals: 
![alt text](https://github.com/chrispoon2263/docker-ROS1_Ubuntu20.04/blob/main/ROS.png?raw=true)

