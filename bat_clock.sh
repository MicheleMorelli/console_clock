#!bin/usr/bash

for ((;;));
do
    tput clear; 
    date +"%H : %M : %S"; 
    bat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep -E "percentage");
    bat2=${bat:15};
    echo "Battery:${bat2:10}";
    sleep 1;
done
