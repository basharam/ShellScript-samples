#!/bin/bash

CIFS_SERVER="server"
CIFS_USER='domain\usename'
CIFS_DIR_LIST="folder1
folder2
folder3
folder4"

LOCAL_MOUNT_DIR="/mnt/temp"

LOCAL_USER_ID=$(id -u)
LOCAL_GROUP_ID=$(id -g)
IOCHARSET="utf8"
SELF_FILENAME=`basename $0`


# Process command line arguments
UMOUNT=0
set -- $(getopt u "$@")
[ $# -lt 1 ] && exit 1

while [ $# -gt 0 ]
do
    case "$1" in
        -u)	UMOUNT=1;;
	*)	break;;
    esac
    shift
done



if [ "$SELF_FILENAME" = "umount_server.sh" ]
then
	echo "unmount"
	
	let UMOUNT=1
fi


OLDIFS="$IFS"
IFS="
"
if [ $UMOUNT == 1 ]; then
    # umount
    for DIR in $CIFS_DIR_LIST; do
        echo "umounting $DIR"
        sudo umount "$LOCAL_MOUNT_DIR/$DIR"
    done
else
    # mount
    read -s -p "Please enter your CIFS password: " 
    echo 
    for DIR in $CIFS_DIR_LIST; do
	if [ ! -d "$LOCAL_MOUNT_DIR/$DIR" ]; then
            echo "mkdir $LOCAL_MOUNT_DIR/$DIR"
            mkdir -p "$LOCAL_MOUNT_DIR/$DIR"
        fi
        echo "mounting $DIR"
        sudo mount -t cifs "//${CIFS_SERVER}/g/$DIR" "$LOCAL_MOUNT_DIR/$DIR" -o user="$CIFS_USER",password="$REPLY",uid="$LOCAL_USER_ID",gid="$LOCAL_GROUP_ID",iocharset="$IOCHARSET",nocase
    done
fi
IFS="$OLDIFS"

