#!/bin/bash

netprefix=$1
port=$2
#1 - 254
echo "ip, port"
for i in {1..254}; do
	ip="${netprefix}.$i"
	timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
done
