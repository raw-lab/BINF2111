#!/usr/bin/python3

import pandas as pd

file_path = '/home/docwhite/Desktop/BINF2111/data/name_game.tsv'
csv_table=pd.read_table(file_path,sep='\t')
csv_table.to_csv('name_game_pandas.csv',index=False)
