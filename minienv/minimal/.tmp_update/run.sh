#!/bin/sh

# wait for button input
read -n1 < /dev/input/event0
sleep 1

# power off
while true; do
	sync && poweroff && sleep 10
done
