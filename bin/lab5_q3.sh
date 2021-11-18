#!/bin/bash

input=$1

N_detector(){
    grep -B 1 "NNNN" $input
}

output=$(N_detector)

echo $output
