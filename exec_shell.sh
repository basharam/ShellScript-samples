
#!/bin/bash

#~ This shell builtin replaces the current process with a specified command. Normally, when the shell
#~ encounters a command, it forks off a child process to actually execute the command. Using the exec
#~ builtin, the shell does not fork, and the command exec'ed replaces the shell. When used in a script,
#~ therefore, it forces an exit from the script when the exec'ed command terminates.


exec echo "Exiting \"$0\" at line $LINENO." # Exit from script here.
# $LINENO is an internal Bash variable set to the line number it's on.
# ----------------------------------
# The following lines never execute.
echo "This echo fails to echo."
exit 99 # This script will not exit here.
# Check exit value after script terminates
#+ with an 'echo $?'.
# It will *not* be 99.
