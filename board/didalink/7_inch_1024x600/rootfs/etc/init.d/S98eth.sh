#!/bin/sh

echo 131 > /sys/class/gpio/export

echo out > /sys/class/gpio/gpio131/direction

echo 1 > /sys/class/gpio/gpio131/value

modprobe r8152

udhcpc -q -i eth0 &

