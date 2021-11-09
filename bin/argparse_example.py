#!/usr/bin/env python3

# import argparse library
import argparse


# create parser object
parser = argparse.ArgumentParser()

# create argument group
required = parser.add_argument_group('Required arguments')

# add argument to group
required.add_argument('-i', '--input', type=str, help='Path to input file', required=True)

# parse the arguments into variables
args = parser.parse_args()

# open file
file_in = open(args.input)

# read file contents
lines = file_in.readlines()

for line in lines:
    if line.startswith('>'):
        print(line.rstrip())
