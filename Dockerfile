FROM ubuntu:18.04 

RUN apt-get update -qq
RUN apt-get install -y tzdata
RUN apt-get install -y git lsb-release sudo gnupg
RUN git clone --depth 1 https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_server.git
RUN export PATH=/bin:/sbin:/usr/bin:/usr/sbin
RUN ./ros_setup_scripts_Ubuntu18.04_server/step1.bash
