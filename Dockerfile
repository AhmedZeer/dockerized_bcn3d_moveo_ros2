FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-moveit \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    ros-humble-xacro \
    ros-humble-moveit-servo \
    mesa-utils \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/ros2_ws
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
CMD ["/bin/bash"]
