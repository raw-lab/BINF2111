#!/usr/bin/python3

my_dna = 'ACTGATCCATATATATTTT' 
length = len(my_dna)
a_count = my_dna.count('A')
t_count = my_dna.count('T')
g_count = my_dna.count('G')
c_count = my_dna.count('C')
at_content = (a_count + t_count) / (length)
gc_content = (1 - at_content)
print('AT content is: ' + str(at_content))
print('GC content is: ' + str(gc_content))
