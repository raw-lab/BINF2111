#!/bin/bash

range_start=$2
range_end=$3

cat --number $1 | head -$range_end | tail +$range_start
