#!/bin/bash

# Script to verify if bluetooth is enabled. For use with Polybar.
# From https://github.com/jaagr/polybar/wiki/User-contributed-modules#bluetooth

status=`systemctl is-active bluetooth.service`

if [ $status == "active" ]
then
	echo ""
fi
