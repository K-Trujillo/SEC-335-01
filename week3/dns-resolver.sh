#!/bin/bash

netprefix=$1
dns=$2
#1 - 254
echo "dns resolution for ${netprefix}"
for i in {1..254}; do
        ip="${netprefix}.$i" 
        nslookup "$ip" "$dns" #| grep -v "can't find" | sed -e 's/^[[:space:]]*//;s/[[:space:]]*$//'
done
