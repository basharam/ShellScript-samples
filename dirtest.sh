#/bin/sh

echo -n Find a folder : 
read dirname

if test -n "$dirname" && test -d $dirname -a -w $dirname
then
echo found folder \"$dirname\" and the contents are:
echo `touch $dirname/hello.txt`
echo `ls -l $dirname`
elif test -z "$dirname"
then
echo Enter file name you want to search.
else
echo no \"$dirname\" folder found.
fi
