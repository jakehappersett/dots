#!/bin/sh

while true;do
	bar.sh
	sleep 1m
done &

xset -b
xmodmap ~/.xmodmap
exec dwm
