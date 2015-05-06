
#! /bin/sh
read_multivar()
{
echo -n "Enter the values of  variables 'var1' and 'var2': "
echo =n "(separated by a space or tab): "

read var1 var2
echo "var1 = $var1"
echo "var2 = $var2"
}
read_REPLY()
{
	echo -n "Enter another value: "
	echo -n "(REPLY is used when no variable is used with read): "
	read
	echo "\$REPLY contains = $REPLY"
}

read_viafile()
{
echo "Read data through FILE line by line"
echo "--------------------------------------------"
while read line
do 
echo "$line"
#done
done <data-file #data-file is a test file

echo "--------------------------------------------"

}

setIFS_inLoop()
{
	echo "------------------------------------------------"
	echo "List of all users:"
	while IFS=: read name passwd uid gid fullname home
	do
	echo "$name ($fullname) $uid $gid \$home: $home"
	done </etc/passwd # I/O redirection.
	echo
	echo "\$IFS still $IFS"
}


#read_viafile
setIFS_inLoop
