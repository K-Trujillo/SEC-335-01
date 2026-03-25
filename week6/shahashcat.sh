#!/bin/bash

output=$1
shadow=$2
wordlist=$3

echo "Cracking SHA-512 w/ Hashcat"

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}Output file: ${output}, Unshadowed file: ${shadow}, Wordlist: ${wordlist} ${clear}"

hashcat -m 1800 -a 0 -o "${output}" "${shadow}" "${wordlist}"

