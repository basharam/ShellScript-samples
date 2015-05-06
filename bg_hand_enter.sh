#!/bin/bash
# test.sh
ls -l &
wait
echo "Done."
#bash$ ./test.


#~ As Walter Brameld IV explains it:
#~ As far as I can tell, such scripts don't actually hang. It just
#~ seems that they do because the background command writes text the console after the prompt. The user gets the impression that
#~ the prompt was never displayed. Here's the sequence of events:
#~ 1. Script launches background command.
#~ 2. Script exits.
#~ 3. Shell displays the prompt.
#~ 4. Background command continues running and writing text to the
#~ console.
#~ 5. Background command finishes.
#~ 6. User doesn't see a prompt at the bottom of the output, thinks is hanging.
#~ Placing a wait after the background command
