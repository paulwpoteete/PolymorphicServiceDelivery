#!/bin/bash
# Forward HTTP traffic to port 10001,10002,10003
#
#
sleep 10

while true
do
	iptables -t nat -F
	iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10001
	echo ":::Apache2 `date`:::" >> /var/log/webservices/access.log
	echo ":::Apache2 `date`:::" >> /var/log/webservices/error.log
sleep 3
	iptables -t nat -F
	iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10002
	echo ":::Lighttpd `date`:::" >> /var/log/webservices/access.log
	echo ":::Lighttpd `date`:::" >> /var/log/webservices/error.log
sleep 3
	iptables -t nat -F
	iptables -t nat -A PREROUTING -p tcp --dport 80 -m state --state NEW -j DNAT --to-destination :10003
	echo ":::h2o `date`:::" >> /var/log/webservices/access.log
	echo ":::h2o `date`:::" >> /var/log/webservices/error.log
sleep 3
done
