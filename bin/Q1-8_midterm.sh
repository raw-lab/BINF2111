#!/bin/bash

for i in *csv;
do 
    sed 's/,/\t/g' "$i" >($basename "$i" .csv).tsv
done


