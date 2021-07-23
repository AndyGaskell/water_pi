#!/bin/bash

# this is a water cycle script

# set-up 
echo "set-up"

# set-up motor 1
gpio -g mode 27 out
gpio -g mode 24 out
gpio -g mode 5 out
echo "motor1 set"	

# set-up motor 2
gpio -g mode 22 out
gpio -g mode 6 out
gpio -g mode 17 out
echo "motor2 set"	

# set-up motor 3
gpio -g mode 23 out
gpio -g mode 16 out
gpio -g mode 12 out
echo "motor3 set"	

# set-up motor 4
gpio -g mode 13 out
gpio -g mode 18 out
gpio -g mode 25 out
echo "motor4 set"	

# set up sensors


echo "sensors set"


# check sensors


# water things


# check temprature


