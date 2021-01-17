#!/bin/bash
ping -c1 172.217.169.78 >/dev/null
echo "Status,Pinging to,Time" >>log.csv
while true; do
    if [ $? -eq 0 ]; then
        now=$(date +"%T")
        echo "ok,google.com,$now" >>log.csv
        # exit 0
    else
        echo "fail"
        now=$(date +"%T")
        echo "fail,google.com,$now" >>log.csv
    fi
    sleep 5
done
