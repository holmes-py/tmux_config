#!/bin/bash
s1=$(ip address)
s2="tun0"
if [[ $s1 == *"$s2"* ]]; then 
	echo $(ip address | grep tun0 | grep inet | awk '{print $2}')
fi

