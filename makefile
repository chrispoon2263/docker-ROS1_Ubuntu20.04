start:
	bash ./start.bash

stop:
	bash ./stop.bash

extra:
	bash ./extra_cont.bash

new_build:
	sudo docker build -t ros_noetic_custom .
