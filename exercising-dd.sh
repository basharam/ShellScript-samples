#!/bin/bash
# exercising-dd.sh
# Script by Stephane Chazelas.
# Somewhat modified by ABS Guide author.
infile=$0 # This script.
outfile=log.txt # Output file left behind.
n=2
p=11

#~ if=INFILE
#~ INFILE is the source file.

#~ of=OUTFILE
#~ OUTFILE is the target file, the file that will have the data written to it.

#~ bs=BLOCKSIZE
#~ This is the size of each block of data being read and written, usually a power of 2.

#~ skip=BLOCKS
#~ How many blocks of data to skip in INFILE before starting to copy. This is useful when the
#~ INFILE has "garbage" or garbled data in its header or when it is desirable to copy only a
#~ portion of the INFILE.
#~ 
#~ seek=BLOCKS
#~ How many blocks of data to skip in OUTFILE before starting to copy, leaving blank data at
#~ beginning of OUTFILE.
#~ 
#~ count=BLOCKS
#~ Copy only this many blocks of data, rather than the entire INFILE.
#~ 
#~ conv=CONVERSION
#~ Type of conversion to be applied to INFILE data before copying operation.

dd if=$infile of=$outfile bs=1 skip=$((n-1)) count=$((p-n+1)) 2> /dev/null

# Extracts characters n to p (8 to 11) from this script ("bash").
# ----------------------------------------------------------------
echo -n "hello vertical world" | dd cbs=1 conv=unblock 2> /dev/null
# Echoes "hello vertical world" vertically downward.
# Why? A newline follows each character dd emits.
exit $?
