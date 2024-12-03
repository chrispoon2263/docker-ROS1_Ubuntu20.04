# Use the base ROS Noetic desktop image
FROM osrf/ros:noetic-desktop-full

# Set environment variables for software rendering
ENV LIBGL_ALWAYS_SOFTWARE=1

# Install necessary libraries, Git, and gmapping
RUN apt update && \
    apt install -y libgl1-mesa-glx libgl1-mesa-dri qt5-default git vim ros-noetic-gmapping python3 python3-pip && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install imageio && \
    rm -rf /var/lib/apt/lists/*

# Set environment variable for XDG_RUNTIME_DIR
ENV XDG_RUNTIME_DIR=/tmp/runtime-ros

# Create XDG_RUNTIME_DIR at runtime and set correct permissions
RUN mkdir -p /tmp/runtime-ros && chmod 700 /tmp/runtime-ros

# Add ROS setup commands to .bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN echo "source /home/ROB456/Shell_code_ROS/devel/setup.bash" >> ~/.bashrc

# Clone the repository into the home directory
# RUN git clone https://github.com/OSUrobotics/ROB456.git /home/ROB456
# Create the directory /home/ROB456
RUN mkdir -p /home/ROB456

# Set the working directory to home
WORKDIR /home/ROB456/Shell_code_ROS

# Ensure permissions and source environment before starting a shell
CMD ["bash", "-c", "export DISPLAY=$DISPLAY && source ~/.bashrc && exec bash"]
