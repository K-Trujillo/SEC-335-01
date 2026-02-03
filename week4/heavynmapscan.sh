#!/bin/bash

ip=$1
#port=$2

echo "Doing heavy nmap scan, may take some time!"
echo "..."

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}Nmap Fast Port Scan! ${clear}"
nmap -F "$ip"

echo -e "${green} Service Detection & Scripts! ${clear}"
nmap -sV -sC "$ip"

echo -e "${green} High Intensity Service Scan! ${clear}"
nmap -sV -version-all "$ip"

echo -e "${green} OS Detection! ${clear}"
nmap -A "$ip"
