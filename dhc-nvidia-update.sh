#!/bin/bash

# Add the graphics-drivers PPA repository
sudo add-apt-repository ppa:graphics-drivers/ppa -y

# Update the package lists
sudo apt update

# Check for the latest recommended NVIDIA driver version
driver_version=$(ubuntu-drivers devices | grep recommended | awk '{print $3}')

# Install the recommended NVIDIA driver version
sudo apt install -y nvidia-driver-${driver_version}

# Reboot the system to apply the driver changes
sudo reboot
