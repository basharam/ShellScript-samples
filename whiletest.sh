#! /bin/sh

who | while read name ter time
do 
echo user $name on $ter since $time
done
