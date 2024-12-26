#!/bin/bash

ARG1=$1

if [ $ARG1 == 'circle' ]; then
  echo 'Moving BB8 in circle!'
  rosrun move_bb8_pkg move_bb8_circle.py

elif [ $ARG1 == 'forward_backward' ]; then
  echo 'Moving BB8 in forward and backward!'
  rosrun move_bb8_pkg move_bb8_forward_backward.py

elif [ $ARG1 == 'square' ]; then
  echo 'Moving BB8 in Square!'
  rosrun move_bb8_pkg move_bb8_square.py

else
  echo 'Invalid argument passed!'
fi
