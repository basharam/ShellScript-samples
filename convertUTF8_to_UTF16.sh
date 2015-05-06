#! /bin/bash

# Convert a string from UTF-8 to UTF-16 and print to the BookList
function write_utf8_string {
STRING=$1
BOOKLIST=$2
echo -n "$STRING" | iconv -f UTF8 -t UTF16 | \
cut -b 3- | tr -d \\n >> "$BOOKLIST"
}
# From Peter Knowles' "booklistgen.sh" script
#+ for converting files to Sony Librie/PRS-50X format.
# (http://booklistgensh.peterknowles.com)
