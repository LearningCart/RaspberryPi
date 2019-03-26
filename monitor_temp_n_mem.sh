#!/bin/bash

FACTOR=1000;

CheckTemp()
{
        TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
        DT=$(($TEMP/$FACTOR));
        echo "CPU TEMP: $DT °C"
        MEM=$(free -h | grep Mem | awk -F' ' '{print $4}')
        echo "Free Space: $MEM"
        sleep 1
}


while true
do
        CheckTemp;
done
