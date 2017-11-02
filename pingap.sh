#!/bin/bash -e 
sleep 2
rm -fr /root/ip.txt
mkdir -p /tmp/ap-ping
rm -fr /tmp/ap-ping/*
cat /proc/net/arp |grep 00:34:cb | awk '{print $1}' >/root/ip.txt
for i in `cat /root/ip.txt`
do 
ping -s 20000 -c 100 $i >>/tmp/ap-ping/result-$ip.txt&
done
