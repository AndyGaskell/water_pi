# this is a test script for the sensor 
# it just reads a sensor value

import time
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

DIGIOUT = 21
GPIO.setup(DIGIOUT, GPIO.IN)
time.sleep(2)

sensor_value = GPIO.input(DIGIOUT)
print "sensor value: ", sensor_value

time.sleep(2)

sensor_value = GPIO.input(DIGIOUT)
print "sensor value: ", sensor_value

time.sleep(2)

sensor_value = GPIO.input(DIGIOUT)
print "sensor value: ", sensor_value

time.sleep(2)

GPIO.cleanup()