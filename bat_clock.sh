#!bin/usr/bash

for ((;;));
do
    tput clear; 
    date +"%H : %M : %S"; 
    bat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep -E "percentage");
    bat2=${bat:15};
    bat2=${bat2::-1};
    echo $bat2;
    sleep 1;
done
