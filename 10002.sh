#!/bin/bash
# Forward HTTP traffic to port 10002
iptables -t nat -F
iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10002
echo ":::Lighttpd `date`:::" >> /var/log/webservices/access.log
echo ":::Lighttpd `date`:::" >> /var/log/webservices/error.log
