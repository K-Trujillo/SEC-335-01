#!/bin/bash

ip=$1
file=$2

echo "Nmap to CSV"
echo "..."

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}Outputting Contents to file ${clear}"
sudo nmap -sT -sV -sC -F "$ip" -Pn -oG "$file"

echo -e "${green}Converting to CSV & Displaying Contents ${clear}"
nmaptocsv -i "$file" -d ","
