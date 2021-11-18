#!/bin/bash

Count_lines(){
grep -nc "" $1
}

Count_lines $1
