#!/bin/bash

Count_lines(){
grep -nc "" $1
}

num_lines=$( Count_lines $1 )

echo Your file $1 has $num_lines lines in it
