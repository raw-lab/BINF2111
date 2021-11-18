#!/usr/bin/python3

import re

dna = "ATGATCGCGGGCCATTCACTAG"

print(dna)

if re.search("TAG$", dna):
    print("Stop codon found!")
else:
    print("Stop codon not found")  

if re.search("^ATG", dna):
    print("Start codon found!")
else:
    print("Start codon not found")
