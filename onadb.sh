#!/bin/bash

DIR="cd /data/local/tmp"

adb shell << EOF

$DIR
ls
EOF
