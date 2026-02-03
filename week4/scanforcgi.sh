#!/bin/bash

netprefix=$1
port=$2

echo "Doing scan..."
for i in {20..30}; do
        ip="${netprefix}.$i"
        nmap -Pn -p "$port" --script http-enum "$ip"
done
