#!/bin/bash

input=$1

#Count start codons
count_starts(){
    grep "^ATG" $input | wc -l
}

number_starts=$(count_starts)

#Count stop codons
count_stops(){
    egrep "TAA$|TAG$|TGA$" $input | wc -l 
}

number_stops=$(count_stops)

#Count codons for arginine
count_arg(){
    egrep "CGT|CGC|CGA|CGG|AGA|AGG" $input | wc -l  
}

number_arg=$(count_arg)

#Count codons for serine
count_ser(){
    egrep "AGT|AGC|TCT|TCC|TCA|TCG" $input | wc -l  
}

number_ser=$(count_ser)

#final table
echo -n "Number of starts: "
echo $number_starts
echo -n "Number of stops: "
echo $number_stops
echo -n "Number of Arginine: "
echo $number_arg
echo -n "Number of Serine: "
echo $number_ser

#Convert codons 
convert_cod(){
    sed 's/^ATG/M/g' $input | 
    sed 's/TAA$/*/g' |
    sed 's/TAG$/*/g' | 
    sed 's/TGA$/*/g' |
    sed 's/CGT/S/g' | 
    sed 's/CGC/S/g' |
    sed 's/CGA/S/g' | 
    sed 's/CGG/S/g' |
    sed 's/AGA/S/g' | 
    sed 's/AGG/S/g' | 
    sed 's/CGT/R/g' | 
    sed 's/CGC/R/g' | 
    sed 's/CGA/R/g' | 
    sed 's/CGG/R/g' |
    sed 's/AGA/R/g' | 
    sed 's/AGG/R/g' 
}
convert=$(convert_cod)

echo "Converting codons to listed amino acids: "
echo $convert
