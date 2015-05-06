#/bin/sh

echo -n Enter you Age:
read aAge

if test -z "$aAge"
then 
echo Enter Age in Numeric value.
exit
fi

if test $aAge -ge 67
then
echo you had been retired.
elif test $aAge -lt 67 -a $aAge -ge 40 
then
echo you would retire soon.
elif test $aAge -lt 40 -a $aAge -ge 35
then
echo Enjoy the bliss of youngster. 
else
echo sorry no match found :'('
fi
