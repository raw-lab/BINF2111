#!/bin/bash

input=$1
output=$2

sed 's/,/\t/g' $input | sed 's/[A-Z]/\L&/g' | sed 's/*/i/g' | sed 's/#/b/g' >$output

echo "Your conversion is complete" >$(tty)

