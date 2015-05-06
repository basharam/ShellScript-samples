#!/bin/sh
#
#	Rotate program log files
#
cd ktmp

rm program.log.6 >/dev/null 2>&1		# This is redundant
mv program.log.5 program.log.6 >/dev/null 2>&1
mv program.log.4 program.log.5 >/dev/null 2>&1
mv program.log.3 program.log.4 >/dev/null 2>&1
mv program.log.2 program.log.3 >/dev/null 2>&1
mv program.log.1 program.log.2 >/dev/null 2>&1
mv program.log   program.log.1 >/dev/null 2>&1
