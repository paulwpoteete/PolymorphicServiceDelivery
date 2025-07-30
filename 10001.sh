#!/bin/bash
# Forward HTTP traffic to port 10001
iptables -t nat -F
iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10001
echo ":::Apache2 `date`:::" >> /var/log/webservices/access.log
echo ":::Apache2 `date`:::" >> /var/log/webservices/error.log
