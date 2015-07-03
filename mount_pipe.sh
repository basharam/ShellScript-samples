#! /bin/bash

# mount -t vboxsf <shared folder on guest> <shared folder on host> with same name
MOUNT_TYPE="vboxsf"
UMOUNT_OPT=False
MOUNT_DIR="pipe"
usage()
{
	echo "To mount execute command as \"$0\""
	echo "To unmount execute command as \"$0 -u \""
	exit 2
}

unMountPipe()
{
	sudo umount ${MOUNT_DIR} || exit 1;
	exit 0
}

optstr=":u"

while getopts $optstr opt
do
    case $opt in
        u) unMountPipe ;;
        *) usage;;
    esac
done

#read -p "Enter your domain password: " DOMAIN_PASSWD


sudo mount -t "$MOUNT_TYPE" -o uid=$(id -u),gid=$(id -g) pipe /home/br/pipe
