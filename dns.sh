#!/bin/bash

# Check the first argument passed to the script
case "$1" in
    "403")
        echo "403"
        ;;
    "shecan")
        echo "shecan"
        ;;
    "clear")
	echo "clear"
	;;
    *)
        echo "Invalid argument. Usage: dns.sh [403|shecan]"
        ;;
esac
