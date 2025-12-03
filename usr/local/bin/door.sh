#!/bin/bash


# Script to open door

logger -t door.sh -p local0.notice FouDoor activated: $USER opened the door

TIMEOUT=5

/usr/bin/gpioset --hold-period 5s -t 0 "P9_14 [ehrpwm1a]"=1
sleep $TIMEOUT
