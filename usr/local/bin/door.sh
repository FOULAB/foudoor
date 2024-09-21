#!/bin/bash


# Script to open door

logger -t door.sh -p local0.notice FouDoor activated: $USER opened the door

TIMEOUT=10

# SET gpio to output
echo out > /sys/class/gpio/gpio50/direction 

trap 'echo 0 > /sys/class/gpio/gpio50/value' EXIT
echo 1 > /sys/class/gpio/gpio50/value 
sleep $TIMEOUT
