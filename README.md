# docker-ROS1_Ubuntu20.04
This docker image works on a clean install of Ubuntu 20.04 VM using Parallels on MacOS intel.

1. Build the image
	$ docker build -t ros_noetic_custom .   (<— there’s a dot here don’t forget)

2. Create a new container with x11 display access ( only need to run once to buiild the container)
	$ docker run -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  ros_noetic_custom

3. Make sure to run to allow docker to use X11 from host machine
   - $ xhost -local:docker 
4. Run multiple instances of that same container (current name of container)
	$ sudo docker start <container-name> && sudo docker exec -it <container-name> /bin/bash

