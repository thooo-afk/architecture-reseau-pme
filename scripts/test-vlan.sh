#!/bin/bash
for ip in 192.168.10.1 192.168.20.1 192.168.30.1 192.168.40.1
do
    ping -c 2 $ip
done

