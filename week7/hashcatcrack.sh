#!/bin/bash

output=$1
hash=$2
shadow=$3
wordlist=$4

echo "Cracking w/ Hashcat"

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}Output file: ${output}, Hash ID: ${hash}, Unshadowed file: ${shadow}, Wordlist: ${wordlist} ${clear}"

hashcat -m "{hash}" -a 0 -o "${output}" "${shadow}" "${wordlist}"

