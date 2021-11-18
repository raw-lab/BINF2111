#!/bin/bash

for i in *fasta;
do
    grep "^ATG" "$i" | wc -l
    grep "TAA$" "$i" | wc -l
    grep "TAG$" "$i" | wc -l
    grep "TGA$" "$i" | wc -l
done
