#!/bin/bash

input=$1
output=$2

convert(){
sed 's/,/\t/g' $input | 
sed 's/[A-Z]/\L&/g' | 
sed 's/*/i/g' | 
sed 's/#/b/g' >$output
}

conversion=$(convert)

echo "Your conversion is complete" >$(tty)

