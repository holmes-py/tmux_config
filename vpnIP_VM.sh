#!/bin/bash
if pgrep -x openvpn >/dev/null
then 
	ifconfig tun0 | grep netmask| awk '{print $2}'
else 
	echo " VPN inactive."
fi

