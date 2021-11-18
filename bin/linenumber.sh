#!/bin/sh

filename="$1"
firstline=$2
lastline=$3
linestoprint=$(($lastline-$firstline+1))

tail -n +$firstline "$filename" | head -n $linestoprint
