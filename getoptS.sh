#! /bin/bash
#:------------------------------------------------------------

usage () {
 echo "Usage:"
 echo bal bla
 exit
}
#:------------------------------------------------------------


replace="w"
arch="/u/arch"
filename=""
testdate="k"

optstr=":ra:d"

while getopts $optstr opt
do
    case $opt in
        r) replace="r";;
        a) arch=$OPTARG;;
        d) testdate=$OPTARG ;;
        *) usage;;
    esac
done


shift `expr $OPTIND - 1`
#echo `expr $OPTIND - 1`
#echo $OPTIND
filename=$1

#echo $1 , $2 , $3

#echo "Archiving" $filename " to " $arch "with" $replace "replace option"

# rest of the code goes here
