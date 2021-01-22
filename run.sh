#!/bin/bash
echo ""
echo "          *** Computer & Network Security ***"
echo "*** Cyber attack simulation in the Industrial Control System ***"
echo ""
sudo sysctl -w net.ipv4.tcp_congestion_control=reno
sudo python cns.py
echo "cleaning up..."
sudo killall -9 tcpdump ping
mn -c > /dev/null 2>&1
echo "end"
