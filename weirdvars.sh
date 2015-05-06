#!/bin/bash
# weirdvars.sh: Echoing weird variables.
echo
var="'(]\\{}\$\""
echo $var # '(]\{}$"
echo "$var" # '(]\{}$" Doesn't make a difference.
echo
echo "IFS -$IFS-"
old_IFS="$IFS"
IFS='\'
echo $var # '(] {}$" \ converted to space. Why?
echo "$var" # '(]\{}$"
# Examples above supplied by Stephane Chazelas.
IFS=$old_IFS



echo "++++++Single quotes+++"

echo "Why can't I write 's between single quotes"
echo
# The roundabout method.
#Since even the escape character (\) gets a literal interpretation within single quotes, trying to enclose a
#single quote within single quotes will not yield the expected result.

echo 'Why can'\''t I write '"'"'s between single quotes'

# |-------| |----------| |-----------------------|
# Three single-quoted strings, with escaped and quoted single quotes between.
echo "----"
echo ;echo;
echo "++++++++escape sequence+++++"
echo "============="
echo "VERTICAL TABS"
echo -e "\v\v\v\v" # Prints 4 vertical tabs.
echo "=============="
echo "QUOTATION MARK"
echo -e "\042" # Prints " (quote, octal ASCII character 42).
echo -e '\a'
echo "=============="
echo "----"

