#!/usr/bin/python3

import sys

count = 0

with open(sys.argv[1]) as reader:
    for line in reader:
        if line.startswith('>'):
            count += 1
print(count)
