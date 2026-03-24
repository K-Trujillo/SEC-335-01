#!/bin/bash

txt=$1
crack=$2

echo "Cracking SHA-512 w/ John"

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}SHA file: ${txt}, TXT File To Run Against: ${crack} ${clear}"

john "${txt}" --format=sha512crypt --wordlist=/usr/share/seclists/Passwords/Common-Credentials/"${crack}"
