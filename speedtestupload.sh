#!/bin/bash
while true
   do mosquitto_pub -h 192.168.251.204 -t 'test/upload' -m $(speedtest --no-download | grep Upload | awk -F: '{print $2}' | awk '{print $1}')
      mosquitto_pub -h 192.168.251.204 -t 'test/download' -m $(speedtest --no-upload | grep Download | awk -F: '{print $2}' | awk '{print $1}')
      sleep 7200
   done
