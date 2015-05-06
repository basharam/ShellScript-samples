#! /bin/bash

#=

usage()
{
	echo "Usage: $0 fromcb "; exit 1;
}

if [ $# = 1 ]
then
	changetodir=$1
	echo $changetodir
	if [ -d $changetodir ] 
	then
		#cat -v <<< "$changetodir"
		#getPath_=$(echo $changetodir | tr -d '\r' )
		#cd `$changetodir`
		#cat -v <<< "$getPath_"
		#echo "$getPath_" | cat -v
		#cd $getPath_
		echo "in path $PWD"
		cd `echo $changetodir | tr -d '\r'`
		
		echo "--in path $PWD"
		
		#~ pushd $changetodir
		#~ pwd
		#~ popd
		
	elif [ -f $changetodir ]
	then
		getPath_=`dirname $changetodir`
		#cat -v <<< "$getPath_"
		#echo "$getPath_" | od -c
		getPath_=`echo $getPath_ | tr -d '\n'`
		
		echo " $LINENO -- $getPath_"
		echo "$getPath_" | od -c
		#fname=`basename $changetodir`
		#cat -v <<< "$getPath_"
		#cd $(echo $getPath_ | tr -d '\r' )
		cd "$getPath_"
	else
			usage
	fi
	

else
 usage
fi
