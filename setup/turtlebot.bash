#!/usr/bin/env bash

##############################################################################
# Install Essentials
##############################################################################
 
# Set MIT Mirror
sudo sed -i -e 's/us\.archive\.ubuntu\.com/mirrors\.mit\.edu/' -e 's/security\.ubuntu\.com/mirrors\.mit\.edu/' /etc/apt/sources.list
 
# Update the package list, and install all available package updates.
sudo apt-get update && sudo apt-get dist-upgrade
 
# Ubuntu Extras
# Installs fonts and media, standard compilers, chrony for time sync, ssh for remote access, firewall, and ack
sudo apt-get install -y ubuntu-restricted-extras build-essential keychain chrony openssh-server gufw ack
 
# Install VCS
## All of the essential verison control tools
sudo apt-get install -y git tig git-gui git-svn gitk subversion mercurial python-pip
 
# Xmonad
## This is optional, I just like xmonad
sudo apt-get install -y xmonad suckless-tools xmobar dwm dmenu trayer libghc6-xmonad-contrib-dev scrot cabal xclip
 
# Editors
## Install vim and emacs, for those who don't like pico.
sudo apt-get install -y vim vim-gtk emacs
 
# Bonus Terminals
## Extra terminals and terminal multiplexers
sudo apt-get install -y rxvt-unicode tmux byobu terminator
 
# Google Chrome
cd /tmp && wget
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
 
##############################################################################
# ROS
##############################################################################
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
 
##############################################################################
# Turtlebot-specific
##############################################################################
# Latest build tools
sudo apt-get install -y python-rosdep python-rosinstall python-rospkg
 
# Basic ROS
sudo apt-get install -y ros-groovy-ros ros-groovy-ros-comm
 
# General Catkinized stacks
sudo apt-get install -y ros-groovy-geometry-msgs ros-groovy-sensor-msgs ros-groovy-nav-msgs ros-groovy-tf ros-groovy-pcl ros-groovy-pcl-ros
sudo apt-get install -y ros-groovy-nodelet ros-groovy-robot-state-publisher ros-groovy-diagnostic-msgs ros-groovy-dynamic-reconfigure
 
# General non catkin stacks
sudo apt-get install -y ros-groovy-diagnostics ros-groovy-xacro ros-groovy-visualization-common
sudo apt-get install -y ros-groovy-navigation ros-groovy-slam-gmapping ros-groovy-bullet
 
# Zeroconf
sudo apt-get install -y ros-groovy-zeroconf-avahi
 
# Kobuki
sudo apt-get install -y ros-groovy-ecl-threads ros-groovy-ecl-devices ros-groovy-ecl-mobile-robot ros-groovy-ecl-streams ros-groovy-ecl-sigslots ros-groovy-yujin-ocs
 
# Perception
sudo apt-get install -y ros-groovy-openni-launch ros-groovy-depthimage-to-laserscan
 
# Vizualisation
sudo apt-get install -y ros-groovy-rviz ros-groovy-robot-model-visualization ros-groovy-rqt
 
# Turtlebot Apps
sudo apt-get install -y ros-groovy-joystick-drivers ros-groovy-image-transport ros-groovy-image-transport-plugins
sudo apt-get install -y ros-groovy-multimaster-experimental ros-groovy-warehouse-ros ros-groovy-python-orocos-kdl
 
# Arm
sudo apt-get install -y ros-groovy-dynamixel-motor
 
# Gazebo
sudo apt-get install -y libprotobuf-dev libprotoc-dev libtar-dev

# Turtlebot and Viz
sudo apt-get install -y ros-groovy-turtlebot* ros-groovy-rqt*
