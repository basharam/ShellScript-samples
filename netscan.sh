#! /bin/bash
# ./netscan.sh
#

 nmap -sP 192.168.169.1-254 | while read 
 do
	if echo $REPLY | grep 'scan report' >/dev/null
	then
		echo $REPLY | awk -F " " '{printf "Name=> %s \tIP=> %s \n", $5 , $6}'
	fi
 done
