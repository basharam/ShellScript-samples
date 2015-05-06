#! /bin/bash
echo "Read a keypress without hitting ENTER."
read -s -n5 -p "Hit a key " 
echo; echo "Keypress was ";echo "$(echo $REPLY |tr 'a-z|A-Z|0-9' '*')"
echo $REPLY
# -s option means do not echo input.
# -n N option means accept only N characters of input.
# -p option means echo the following prompt before reading input.
# Using these options is tricky, since they need to be in the correct order.
