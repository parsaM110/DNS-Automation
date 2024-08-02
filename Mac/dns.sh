#!/bin/bash

# Check the first argument passed to the script
case "$1" in
    "shekan")
	echo -e "\033[0;32mshekan\033[0m"
	networksetup -setdnsservers Wi-Fi 178.22.122.100 185.51.200.2
	sudo dscacheutil -flushcache
        ;;
    "403")
	echo -e "\033[0;34m403\033[0m"
	networksetup -setdnsservers Wi-Fi 10.202.10.202 10.202.10.102
	sudo dscacheutil -flushcache
        ;;
    "begzar")
	echo -e "\033[0;36mbegzar\033[0m"
	networksetup -setdnsservers Wi-Fi 185.55.226.26 185.55.225.25
	sudo dscacheutil -flushcache
        ;;
    "electro")
	echo -e "\033[0;95melectro\033[0m"
	networksetup -setdnsservers Wi-Fi 78.157.42.101 78.157.42.100
	sudo dscacheutil -flushcache
        ;;
    "clear")
	echo -e "\033[0;31mclear\033[0m"
	networksetup -setdnsservers Wi-Fi empty
	sudo dscacheutil -flushcache
	;;
    *)
        echo "Invalid argument. Usage: dns.sh [403|shecan|shecan]"
        ;;
esac
