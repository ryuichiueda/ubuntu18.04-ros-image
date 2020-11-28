build:
	sudo docker image build . -t ryuichiueda/ubuntu18.04-pi4-ros-image
run:
	sudo docker container run -t ryuichiueda/ubuntu18.04-pi4-ros-image
stop:
	sudo docker container stop `sudo docker container list | grep ubuntu18.04-pi4-ros-image | sed 's;ryuichiueda/ubuntu18.04-pi4-ros-image.*;;'`
