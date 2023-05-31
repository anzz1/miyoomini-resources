#!/bin/sh

DIR="$(dirname "$0")"
cd "$DIR"

# play startup sound
oss welcome.raw

# wait for button input
read -n1 < /dev/input/event0
sleep 1

# play shutdown sound
oss bye.raw

# power off
while true; do
	sync && poweroff && sleep 10
done
