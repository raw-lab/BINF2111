#!/bin/bash

filename=$1
firstline=$2
lastline=$3

sed -ne "${firstline},${lastline}p;${lastline}q" < ${filename}
