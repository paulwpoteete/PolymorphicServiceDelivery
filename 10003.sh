#!/bin/bash
# Forward HTTP traffic to port 10003
iptables -t nat -F
iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10003
echo ":::h2o `date`:::" >> /var/log/webservices/access.log
echo ":::h2o `date`:::" >> /var/log/webservices/error.log
