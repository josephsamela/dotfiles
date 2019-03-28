#! /bin/bash
broadcast=$(ip a | awk '$1 == "inet" &&  $4 !~ /^127/ { print $4"/24" }' | uniq | grep -v host)

RED='\033[0;31m'
GRAY='\033[0;37m'
GREEN='\033[0;32m'

printf "${GRAY}Scan networks: ${RED}\n$broadcast\n"
candidates=$(
for brdip in ${broadcast}; do
	nmap -sP $brdip | awk '$2 == "scan" { print $5$6 }'
done)
printf "${GRAY}\nHosts found: ${GREEN}\n$candidates\n"

