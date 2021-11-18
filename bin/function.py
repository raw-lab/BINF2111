#!/usr/bin/python3

def get_at_content(dna, sig_figs):
	length = len(dna)
	a_count = dna.upper().count('A')
	t_count = dna.upper().count('T')
	at_content = (a_count + t_count) / length
	return round(at_content, sig_figs)

test_dna = "ATCATACATACAT"
print(get_at_content(test_dna,1))
print(get_at_content(test_dna,2))
print(get_at_content(test_dna,3))
