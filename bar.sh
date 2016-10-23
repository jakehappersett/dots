#!/bin/sh

#INTERFACE=wlp3s0
#
##old rx and tx counts
#RXB='cat /sys/class/net/$INTERFACE/statistics/rx_bytes'
#TXB='cat /sys/class/net/$INTERFACE/statistics/tx_bytes'
#
#getNet(){
#
#	RXBN='cat /sys/class/net/$INTERFACE/statistics/rx_bytes'
#	TXBN='cat /sys/class/net/$INTERFACE/statistics/tx_bytes'
#
#	RXR='echo '
#	RXR=`echo "($RXBN - $RXB) / 1024 / $SLEEP" | xargs printf "%.2f"`
#	TXR=`echo "($TXBN - $TXB) / 1024 / $SLEEP" | xargs printf "%.2f"`
#	echo -ne "up : $RXR kB/s down : $TXR kB/s "
#
#}
##| bc -l 

space(){
	echo ' | '
}
getDate(){

	date '+%m-%d  %H:%M ' #print current date
}

getBat(){
	BATC=/sys/class/power_supply/BAT0/capacity
	BATS=/sys/class/power_supply/BAT0/status

	echo -n "BAT: "
	test "`cat $BATS`" = "Charging" && echo -n '+' || echo -n '-'
	sed -n p $BATC

	#this part tries to add colors, it doesn't seem to work with shell script, implement when rewritten in C 
#	T=`sed -n p $BATC`
#	if [ "$T" -ge 50 ];then
#		 echo -e "\e[0;32m "$T" \e[0m"
#	else 
#		echo -e "\e[0;31m "$T" \e[0m"
#	fi

}
xsetroot -name "$(getBat)$(space)$(getDate)"
