#!/bin/bash

echo 'Going to move_bb8_pkg source folder!' 
cd /home/shahram/Desktop/Linux-For-Robotics/catkin_ws/src/move_bb8_pkg/src
echo 'Listing contents with permissions!'
ls -la
echo 'Updating permission for move_bb8_square.py'
chmod 777 move_bb8_square.py
echo 'Listing Contents and updated permissions!'
ls -la
