#!/bin/bash
# GoogleIP = 172.217.169.78
ping -c1 172.217.169.78 >/dev/null
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
    sleep 5
done
