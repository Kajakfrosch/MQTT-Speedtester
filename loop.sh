#!/bin/bash
while true
 do
   
   mosquitto_pub -h 192.168.251.204 -t 'ping' -m "$(ping 192.168.251.1 -c 1 | grep icmp_seq=1 | awk -F\= '{print $NF}' | awk '{print $1}' )" 
   sleep 2
 done
