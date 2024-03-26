#!/bin/bash
if pgrep -x openvpn >/dev/null
then 
#	ifconfig tun0 | grep netmask| awk '{print $2}'
	ip address | grep tun0 | grep inet | awk '{print $2}' | cut -d '/' -f1
else 
	echo " VPN inactive."
fi

