#!/bin/bash

start=ATG
stop1=TAA
stop2=TAG
stop3=TGA

for i in *fasta;
do
    echo -n "number of start codon (ATG):"
    grep "^$start" "$i" | wc -l
    echo -n "number of stop codon1 (TAA):"
    grep "$stop1$" "$i" | wc -l
    echo -n "number of stop codon2 (TAG):"
    grep "$stop2$" "$i" | wc -l
    echo -n "number of stop codon3 (TGA):"
    grep "$stop3$" "$i" | wc -l
done
