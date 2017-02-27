#!/bin/sh

# Usage:
#   Static: sh setip.sh IP_ADDR GATEWAY_ADDR
#   DHCP  : sh setip.sh


# Don't want to use Wi-Fi? See all services available:
#networksetup -listallnetworkservices

if [ "$1" != "" ]; then
        networksetup -setmanual Wi-Fi $1 255.255.255.0 $2
else
        networksetup -setdhcp Wi-Fi
fi
