#!/bin/bash

f1=$1
f2=$2
m=$3
x=$4
#port=$2

echo "Mangling words, may take some time!"
echo "..."

green='\033[0;32m'
clear='\033[0m'

echo -e "${green}Mangling ${f1} to ${f2}. Min: ${m}, Max: ${x} ${clear}"
touch "${f2}"
rsmangler --file "$f1" -m "$m" -x "$x" > "$f2" 
head "$f2" -n 5
