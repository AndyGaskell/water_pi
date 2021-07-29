#!/bin/bash

# this is a water cycle script

function check_and_water {
    label=$1
    sensor_gpio=$2
    motor_gpio=$3
    echo "check_and_water $label "
    echo "sensor gpio: $sensor_gpio "
    echo "motor gpio: $motor_gpio "

    # check the sensor
    sensor_value=$(gpio -g read $sensor_gpio)
    echo "sensor_value: $sensor_value "

    if [ $sensor_value -eq 1 ]
    then
        echo "detected $label is dry"
        gpio -g write $motor_gpio 1
        sleep 10
        gpio -g write $motor_gpio 0
    else 
        echo "detected $label is wet"
    fi 
    
    sleep 2
    echo " "

}

echo "-----------------------------"
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "water_cycle.sh run at $dt "

# params
sensor_1_gpio=10;
sensor_2_gpio=9;
sensor_3_gpio=11;
sensor_4_gpio=0;
motor_1_gpio=5;
motor_2_gpio=17;
motor_3_gpio=12;
motor_4_gpio=25;

# set-up 
echo "set-up"

# set-up motor 1
gpio -g mode 24 out
gpio -g mode 27 out
gpio -g mode $motor_1_gpio out
sleep 1
gpio -g write 24 1
gpio -g write 27 0
echo "motor1 set"	

# set-up motor 2
gpio -g mode 6 out
gpio -g mode 22 out
gpio -g mode $motor_2_gpio out
sleep 1
gpio -g write 6 1
gpio -g write 22 0
echo "motor2 set"	

# set-up motor 3
gpio -g mode 23 out
gpio -g mode 16 out
gpio -g mode $motor_3_gpio out
sleep 1
gpio -g write 23 1
gpio -g write 16 0
echo "motor3 set"	

# set-up motor 4
gpio -g mode 13 out
gpio -g mode 18 out
gpio -g mode $motor_4_gpio out
sleep 1
gpio -g write 13 1
gpio -g write 18 0
echo "motor4 set"	

# set up sensors
gpio -g mode $sensor_1_gpio in
gpio -g mode $sensor_2_gpio in
gpio -g mode $sensor_3_gpio in
gpio -g mode $sensor_4_gpio in
echo "sensors set"

sleep 5
echo "  "

# check sensors and water things
check_and_water 1 $sensor_1_gpio $motor_1_gpio
check_and_water 2 $sensor_2_gpio $motor_2_gpio
check_and_water 3 $sensor_3_gpio $motor_3_gpio
check_and_water 4 $sensor_4_gpio $motor_4_gpio

# check temprature
/opt/vc/bin/vcgencmd measure_temp
#/opt/vc/bin/vcgencmd measure_temp | awk -F "[=\']" '{print($2}'

