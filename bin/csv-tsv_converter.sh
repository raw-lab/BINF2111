#!/bin/bash/

input=$1

sed 's/,/\t/g' $input 

function print_to_terminal(){
    echo "Your comma-separated file has been converted to tab-delim file" >$(tty)
    echo -n "Wise choice!" >$(tty)
}

output=$(print_to_terminal)

