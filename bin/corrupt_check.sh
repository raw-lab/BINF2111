#!/bin/bash

corrupt_check(){
diff $1 $2
}

diff $1 $2 >changed_lines.txt

Count_lines(){
wc -l $1
wc -l $2
}

#echo Your file $1 has difference of $num_lines lines in it
