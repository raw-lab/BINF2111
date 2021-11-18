#!/bin/bash

input=$1

#count start codons
start_codon(){
	egrep "^ATG" $input | wc -l
}

number_starts=$(start_codon)

#count stop codons
stop_codon(){
	egrep "TAA$|TAG$|TGA$" $input | wc -l
}

number_stop=$(stop_codon)

#count sequences
count_seq(){
	egrep ">" $input | wc -l
}
number_seq=$(count_seq)

#count Arginine (R)
count_arg(){
	egrep "CGT|CGC|CGA|CGG|AGA|AGG" $input | wc -l
}
number_arg=$(count_arg)

#final table
echo -n "Number of starts: "
echo $number_starts
echo -n "Number of stops: "
echo $number_stops
echo -n "Number of sequences: "
echo $number_seq
echo -n "Number of Arginine Codons/Amino Acids (R): "
echo $number_arg

#Convert codons to Amino acids
convert_cod(){
	sed 's/^ATG/M/g' $input |
	sed 's/TAA$/*/g' |
	sed 's/TAG$/*/g' |
	sed 's/TGA$/*/g' |
	sed 's/CGT/R/g' |
	sed 's/CGC/R/g' |
	sed 's/CGA/R/g' |
	sed 's/CGG/R/g' |
	sed 's/AGG/R/g' | 
	sed 's/AGA/R/g' 
}

convert=$(convert_cod)

echo "Converting codons to Arginine"
echo $convert
