#!/bin/bash

# this is a test script for the sensor 
# it just reads all sensor value

sensor_gpio=10
echo "sensor 1 gpio: $sensor_gpio "

gpio -g mode $sensor_gpio in
echo "sensor set-up"
sleep 2

# check the sensor
sensor_value=$(gpio -g read $sensor_gpio)
echo "sensor 1 value: $sensor_value "
if [ $sensor_value == 0 ]; then
	echo "-> sensor 1 is wet"
else 
	echo "-> sensor 1 is dry"
fi


sensor_gpio=9
echo "sensor 2 gpio: $sensor_gpio "

gpio -g mode $sensor_gpio in
echo "sensor set-up"
sleep 2

# check the sensor
sensor_value=$(gpio -g read $sensor_gpio)
echo "sensor 2 value: $sensor_value "
if [ $sensor_value == 0 ]; then
	echo "-> sensor 2 is wet"
else 
	echo "-> sensor 2 is dry"
fi

sensor_gpio=11
echo "sensor 3 gpio: $sensor_gpio "

gpio -g mode $sensor_gpio in
echo "sensor set-up"
sleep 2

# check the sensor
sensor_value=$(gpio -g read $sensor_gpio)
echo "sensor 3 value: $sensor_value "
if [ $sensor_value == 0 ]; then
	echo "-> sensor 3 is wet"
else 
	echo "-> sensor 3 is dry"
fi

sensor_gpio=0
echo "sensor 4 gpio: $sensor_gpio "

gpio -g mode $sensor_gpio in
echo "sensor set-up"
sleep 2

# check the sensor
sensor_value=$(gpio -g read $sensor_gpio)
echo "sensor 4 value: $sensor_value "
if [ $sensor_value == 0 ]; then
	echo "-> sensor 4 is wet"
else 
	echo "-> sensor 4 is dry"
fi