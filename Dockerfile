# Use the base ROS Noetic desktop image
FROM osrf/ros:noetic-desktop-full

# Set environment variables for software rendering
ENV LIBGL_ALWAYS_SOFTWARE=1

# Install necessary libraries and Git
RUN apt update && \
    apt install -y libgl1-mesa-glx libgl1-mesa-dri git && \
    rm -rf /var/lib/apt/lists/*

# Add ROS setup command to .bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

# Clone the repository into the home directory
RUN git clone https://github.com/OSUrobotics/ROB456.git /home/ROB456

# Set the working directory to home
WORKDIR /home

# Default command to run a shell, sourcing .bashrc when starting a new shell
CMD ["bash", "-c", "export DISPLAY=$DISPLAY && source ~/.bashrc && exec bash"]
