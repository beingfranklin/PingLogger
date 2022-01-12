#!/bin/bash

# The IP to check. Here we use one of the Google's IP's -  172.217.169.78
CUSTOM_IP = 172.217.169.78

# Delay is set to 5 seconds
DELAY = 5

ping -c1 $CUSTOM_IP >/dev/null
echo "Status,Pinging to,Time" >>log.csv
while true; do
    now=$(date +"%T")
    if [ $? -eq 0 ]; then
        echo "ok,google.com,$now" >>log.csv
        # exit 0
    else
        echo "fail"
        echo "fail,google.com,$now" >>log.csv
    fi
    sleep $DELAY
done
