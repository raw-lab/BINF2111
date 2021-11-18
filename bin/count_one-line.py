#!/usr/bin/python3

import sys

print( len( [ x for x in open(sys.argv[1]) if x.startswith('>') ] ) )
