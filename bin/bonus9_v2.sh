#!/bin/bash
echo -n "Working directory: "
pwd
echo ""

echo -n "Number of sequences in $1 is: "
grep -Ev ">" $1 | wc -l
head $1 > std_out.txt

echo ""
echo "Now printing std_out:"
more std_out.txt
