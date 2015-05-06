#! /bin/bash

shopt -s nocasematch #enable case match
BROWSER=FireFOX

if echo $BROWSER | grep -iq firefox
then
	#BROWSER="firefox"
	echo  $BROWSER $LINENO
else
	echo  $BROWSER but use chrome $LINENO
	#BROWSER="google-chrome --use-spdy=off --user-data-dir=${HOME}"
fi
shopt -u nocasematch #disable case match
