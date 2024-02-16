#!/bin/bash

# Check the first argument passed to the script
case "$1" in
    "403")
        echo "403"
	networksetup -setdnsservers Wi-Fi 178.22.122.100
	networksetup -setdnsservers Wi-Fi 178.22.122.100
        ;;
    "shecan")
        echo "shecan"
	networksetup -setdnsservers Wi-Fi 10.202.10.202
	networksetup -setdnsservers Wi-Fi 10.202.10.102
        ;;
    "clear")
	echo "clear"
	networksetup -setdnsservers Wi-Fi empty
	;;
    *)
        echo "Invalid argument. Usage: dns.sh [403|shecan]"
        ;;
esac
