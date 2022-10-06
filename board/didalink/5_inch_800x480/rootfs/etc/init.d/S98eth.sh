#!/bin/sh

echo 1 > /sys/class/gpio/export

echo out > /sys/class/gpio/gpio1/direction

echo 1 > /sys/class/gpio/gpio1/value

modprobe r8152

/root/generateMac.bin
