#!/bin/bash

# this is a test script for the MotoZero control board
# it goes round each motor making it run for one second

# motor 4
gpio -g mode 27 out
gpio -g mode 24 out
gpio -g mode 5 out
echo "motor1 set"	

echo "forward"	
gpio -g write 27 1
gpio -g write 24 0

echo "motor1 go"
gpio -g write 5 1

sleep 4

echo "motor1 stop"
gpio -g write 5 0

sleep 4


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

sleep 4

echo "motor2 stop"
gpio -g write 17 0

sleep 4


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

sleep 4

echo "motor3 stop"
gpio -g write 12 0

sleep 4


# motor 4
gpio -g mode 13 out
gpio -g mode 18 out
gpio -g mode 25 out
echo "motor4 set"	

echo "forward"	
gpio -g write 13 1
gpio -g write 18 0

echo "motor4 go"
gpio -g write 25 1

sleep 4

echo "motor4 stop"
gpio -g write 25 0

sleep 4
