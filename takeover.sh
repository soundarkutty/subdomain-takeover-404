#!/bin/bash
echo -e "\e[1;36m   ___          ______      \e[0m"
echo -e "\e[1;36m      |  $$%%SS$$            \e[0m"
echo -e "\e[1;36m    | --- |  AckBoy|  ||    \e[0m"
echo -e "\e[1;36m   |      |     |   ||        \e[0m"
echo -e "\e[1;33m Takeover ##HACKboy### \e[0m"


url=$1
echo -e "\e[1;34mStarting Subdomains Enumerations \e[0m"

echo "sAll tools"

subfinder -d $1 -o subs.txt
amass enum --passive -d  $1 -o subs.txt
amass enum -brute -d $1 -o subs.txt
assetfinder --subs-only $1  -o subs.txt
echo -e "\e[1;34mExtract Unique domain \e[0m"
sort -u subs.txt -o $1.txt


echo -e "\e[1;34mStarting Subdomain takerover starts \e[0m"
echo "subjack"
subjack -w $1.txt -c /root/fingerprints.json -ssl -t 100 -v
echo "subzy"
subzy -targets $1.txt 
rm subs.txt 
rm $1.txt
