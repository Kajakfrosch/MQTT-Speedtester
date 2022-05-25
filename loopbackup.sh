#!/bin/bash
while true
 do
   
   mosquitto_pub -h 192.168.250.204 -t 'ping' -m "50"
   sleep 1
 done
