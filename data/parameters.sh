#!/bin/bash

# Parameter variables
param1=$1       # the first parameter used when running the program
param2=$2       # the second parameter used when running the program


echo "These parameters are set to variables within the code: "
echo "This is the first parameter: $param1"
echo "This is the second parameter: $param2"

echo "" # print blank line

echo "These parameters are not set to variables within the code: "
echo "These are a couple more parameters: $3, $4"

# Parameters can be used the same as any other variable
if [[ ${#param1} -ge ${#3} ]]; then
    echo "Parameter 1 is longer than parameter 3"
fi

# To run the program, you would have to put in your parameters. We have 4 parameters specified within the code ($1, $2, $3, $4).

# bash parameters.sh hello how are you

# Parameter 1 ($1/param1) would be set to hello
# Parameter 2 ($2/param2) would be set to how
# Parameter 3 ($3) would be set to are
# Parameter 4 ($4) would be set to you