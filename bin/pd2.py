#!/usr/bin/python3

import pandas as pd

file_path = '/home/docwhite/Desktop/BINF2111/data/name_game.tsv'

dfs = pd.read_csv(file_path, sep='\t', chunksize=50)
for df in dfs:
    df.to_csv('file1.csv', sep=',', mode='a')
