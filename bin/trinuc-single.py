#!/usr/bin/python3

dna = 'AATTGGCC'
counts = {}
# For loops did not end in colon :
for base1 in ['A', 'T', 'G', 'C']:
	for base2 in ['A', 'T', 'G', 'C']:
		for base3 in ['A', 'T', 'G', 'C']:
			trin = base1 + base2 + base3
			count = dna.count(trin)
			counts[trin] = count
print(counts['TGG'])
