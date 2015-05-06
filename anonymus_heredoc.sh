#!/bin/bash
: <<TESTVARIABLES
${HOSTNAME?}${USER?} # Print error message if one of the variables not set.
TESTVARIABLES
exit $?
