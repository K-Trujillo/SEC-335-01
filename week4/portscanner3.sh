#!/bin/bash

ip=$1
portfile=$2
#1 - 254
echo "ip, port"
for port in $(cat $portfile); do
	#ip="${netprefix}.$i"
	#timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
	nmap --open -p $port $ip | grep -E "open" | grep -v "unknown"
done
