#!/usr/bin/python3

dna = 'AATTGGCC'
bases = ['A', 'T', 'G', 'C']
counts = {} # variable name was different in the loops, changing this one fixed it
for base1 in bases:
    for base2 in bases:
        dinucleotide = base1 + base2
        count = dna.count(dinucleotide)
        counts[dinucleotide] = count  

for dinucleotide in counts.keys():
	if counts.get(dinucleotide) == 2:
		print(dinucleotide)
