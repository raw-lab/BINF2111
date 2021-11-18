#!/bin/bash

input=$1

echo -n "Number of starts: "
grep -c "^ATG" $input

echo -n "Number of Serine: "
grep -Ec "TCT|TCC|TCA|TCG" $input

echo ""
echo -n "Number of Arginine: "
grep -Ec "AGA|AGG" $input

echo -n "Number of stops: "
egrep "TAA$|TAG$|TGA$" $input | wc -l 

echo ""
echo ""
echo ""
echo "Converting codons to listed amino acids: "
echo ""
sed 's/^ATG/M/g' $1 | sed 's/TCT/S/g' | sed 's/TCC/S/g' | sed 's/TCA/S/g' | sed 's/TCG/S/g' | sed 's/AGA/R/g' | sed 's/AGG/R/g' | sed 's/TAA$/*/g' | sed 's/TAG$/*/g' | sed 's/TGA$/*/g'
