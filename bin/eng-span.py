#!/usr/bin/python3

import re

english = ["one","two","three","four","five"]
spanish = ["uno","dos","tres","cuatro","cinco"]
zippedList = {}
for i in range(0,len(english)):
    zippedList[english[i]] = spanish[i];
print(zippedList)
