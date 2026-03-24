#!/bin/bash

txt=$1

echo "Cracking SHA-512 w/ John"

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}SHA file: ${txt}, RUNNING AGAINST ROCKYOU.TXT ${clear}"

john "${txt}" --format=sha512crypt --wordlist=/home/champuser/rockyou.txt
