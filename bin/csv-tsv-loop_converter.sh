#!/bin/bash/

for i in *csv;
do  
    sed 's/,/\t/g' "$i" >$(basename "$i" .csv).tsv
done

function print_to_terminal(){
    echo "Your comma-separated file has been converted to tab-delim file" >$(tty)
    echo -n "Wise choice!" >$(tty)
}

output=$(print_to_terminal)

