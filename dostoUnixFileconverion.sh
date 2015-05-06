#! /bin/bash

DOSFILENAME="dosfiletype.txt"
UNIXFILENAME="$DOSFILENAME.unix"

CR='\015' #or CR='\r' # Carriage return.
# 015 is octal ASCII code for CR.
# Lines in a DOS text file end in CR-LF.
# Lines in a UNIX text file end in LF only.

tr -d $CR < $DOSFILENAME >$UNIXFILENAME
