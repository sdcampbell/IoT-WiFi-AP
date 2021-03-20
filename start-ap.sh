#!/bin/bash
iptables -X
iptables -F
ifconfig wlan1 up
ifconfig wlan1 10.0.0.1/24
iptables -t nat -F
echo '1' > /proc/sys/net/ipv4/ip_forward
service hostapd start
iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080
#iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-ports 8080
iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 8080
#iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 443 -j REDIRECT --to-ports 8080
service dnsmasq start
