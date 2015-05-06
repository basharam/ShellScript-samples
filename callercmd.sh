#!/bin/bash
#~ Putting a caller command inside a function echoes to stdout information
#~ about the caller of that function.

function1 ()
{
	echo $0
	if [ $0 = "./callercmd.sh" ]
	then
	echo "in $0 file $LINENO"
	fi
	
	# Inside function1 ().
	caller 0 # Tell me about it.
}

function2()
{
	function1 # Line 9 of script.
	caller 0
}


function3()
{
	function2 # Line 9 of script.
	caller 0
}


function3

# 9 main test.sh
# ^ Line number that the function was called from.
# ^^^^ Invoked from "main" part of script.
# ^^^^^^^ Name of calling script.
caller 0 # Has no effect because it's not inside a function
