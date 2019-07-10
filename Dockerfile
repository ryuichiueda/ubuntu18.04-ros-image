FROM ubuntu:18.04 

RUN apt-get update -qq
RUN apt-get install -y tzdata
RUN apt-get install -y git lsb-release sudo gnupg
RUN git clone --depth 1 https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_server.git
RUN ./ros_setup_scripts_Ubuntu18.04_server/step1.bash
SHELL ["/bin/bash", "-c"]
RUN source /opt/ros/melodic/setup.bash && mkdir -p catkin_ws/src && cd catkin_ws/src && catkin_init_workspace
RUN source /opt/ros/melodic/setup.bash && cd catkin_ws && catkin_make
RUN echo 'source /opt/ros/melodic/setup.bash' >> /.bashrc
RUN echo 'export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/catkin_ws/src' >> /.bashrc
RUN source /.bashrc
