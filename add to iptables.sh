#!/bin/bash
ip="$(ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
sed -i -e '9i -A INPUT -s '$ip'/24 -j ACCEPT   '$1'\' /etc/sysconfig/iptables