#!/bin/bash

# this is a test script for the MotoZero control board
# it tests one motor making it run for one second

# motor 1
gpio -g mode 27 out
gpio -g mode 24 out
gpio -g mode 5 out
echo "motor1 set"	

echo "forward"	
gpio -g write 27 1
gpio -g write 24 0

echo "motor1 go"
gpio -g write 5 1

sleep 10

echo "motor1 stop"
gpio -g write 5 0


