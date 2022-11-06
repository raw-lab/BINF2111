#!/usr/bin/env/python3

# import argparse library
import argparse

# create parser object
parser = argparse.ArgumentParser()

# create argument group
required = parser.add_argument_group('Required arguments')

# add argument to group
required.add_argument('-i', '--input', type=str, help='Path to input file', 
required=True)

# parse the arguments into variables
args = parser.parse_args()

# open file
file_in = open(args.input)

# read file contents
lines = file_in.readlines()

# Empty lists for headers and sequences
head = []
seq = []

# Loops through elements in lines. Assigns headers to head list and sequences to seq list
for line in lines:
	line.rstrip()
	if line[0] == ">":
		head.append(line)
	if line[0] != ">":
		seq.append(line)
