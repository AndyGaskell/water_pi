#!/bin/bash

# this is a test script for the MotoZero control board
# it tests one motor making it run for one second

# motor 3
gpio -g mode 23 out
gpio -g mode 16 out
gpio -g mode 12 out
echo "motor3 set"	

echo "forward"	
gpio -g write 23 1
gpio -g write 16 0

echo "motor3 go"
gpio -g write 12 1

sleep 10

echo "motor3 stop"
gpio -g write 12 0

