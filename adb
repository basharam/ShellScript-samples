#!/bin/sh

#getprocess=`adb devices`
#echo $getprocess
#set $getprocess
#deviceid=$5
#echo $deviceid
#adb -s $deviceid shell

#if [ -z "$7"  ]; then
#echo "connected devices: 1"
#else
#gnome-terminal -e adb -s $7 shell
#echo ""
#fi
kdevice_str=device
k=0

#Pipe adb devices output to while and read junk_str variable as akey 
#to parse the string
adb devices | while read dev_id dev_str junk_str
do
	
		if test "$dev_str" = "$kdevice_str" &&  test -z "$junk_str"
		then 
			k=$(($k+1)) 
			echo  $dev_str id $dev_id $k
			#xterm -T "$dev_id" -e adb -s $dev_id shell &

		else
			:
		fi

done
 echo $k
