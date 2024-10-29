#!/bin/sh

set -e

# block all outgoing traffic to local network
iptables -I INPUT -s 192.168.0.0/16,172.16.0.0/12,10.0.0.0/8 -j DROP

# run parent entrypoint 
./usr/bin/docker-entrypoint.sh
