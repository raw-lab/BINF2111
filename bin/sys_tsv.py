#!/usr/bin/python3

import csv

with open('/home/docwhite/Desktop/BINF2111/data/name_game.csv','r') as csvin, open('NAD.tsv', 'w') as tsvout:
    csvin = csv.reader(csvin)
    tsvout = csv.writer(tsvout, delimiter='\t')

    for row in csvin:
        tsvout.writerow(row)


# read tab-delimited file
#with open('/home/docwhite/Desktop/BINF2111/data/name_game.tsv','rb') as fin:
#    cr = csv.reader(fin, delimiter='\t')
#    filecontents = [line for line in cr]

# write comma-delimited file (comma is the default delimiter)
#with open('interactome.csv','wb') as fou:
#    cw = csv.writer(fou, quotechar='', quoting=csv.QUOTE_NONE, escapechar='\\')
#    cw.writerows(filecontents)

#file_path = '/home/docwhite/Desktop/BINF2111/data/name_game.tsv'
#tabin = csv.reader(open('/home/docwhite/Desktop/BINF2111/data/name_game.tsv'), dialect=csv.excel_tab)
#commaout = csv.writer(open('sys.csv', 'wb'), dialect=csv.excel)

#for row in tabin:
#  commaout.writerow(row)
