#!/bin/bash

logfile=/tmp/wireguard.sh.log

echo "-------------" >> $logfile
echo "Action:" >> $logfile
echo "$2" >> $logfile
# "up"

env >> $logfile

if [ "$2" == "up" ]; then
    echo "UP!" >> $logfile
    if [[ "$IP4_ROUTE_0" == "192.168.0.0/24 0.0.0.0"* ]]; then
        echo "HOME NETWORK!" >> $logfile
        ip route del 192.168.0.0/24 dev wg0
    else
        echo "FOREIGN NETWORK!" >> $logfile
        ip route add 192.168.0.0/24 via 10.0.10.3 dev wg0
    fi
fi
