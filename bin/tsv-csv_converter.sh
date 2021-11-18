#!/bin/bash/

input=$1

sed 's/\t/,/g' $input 

echo "Your tab-delim file has been converted to comma-separated file"
