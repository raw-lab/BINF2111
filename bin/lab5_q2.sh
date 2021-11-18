#!/bin/bash

original=$1
corrupted=$2
original_count=`grep "@" $original | wc -l`
corrupted_count=`grep "@" $corrupted | wc -l`

Corrupt_check(){
    diff $original $corrupted --color
}

lines_diff=$(Corrupt_check)

output=$(($original_count-$corrupted_count))

echo -n "Your original file has:"
echo $original_count
echo -n "Your corrupted file has:"
echo $corrupted_count
echo -n "Difference in line numbers:"
echo $output
echo -n "Difference (diff) command found these lines to be different:"
echo $lines_diff
