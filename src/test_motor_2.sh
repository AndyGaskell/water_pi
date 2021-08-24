#!/bin/bash

# this is a test script for the MotoZero control board
# it tests one motor making it run for one second

# motor 2
gpio -g mode 22 out
gpio -g mode 6 out
gpio -g mode 17 out
echo "motor2 set"	

echo "forward"	
gpio -g write 22 1
gpio -g write 26 0

echo "motor2 go"
gpio -g write 17 1

sleep 10

echo "motor2 stop"
gpio -g write 17 0
