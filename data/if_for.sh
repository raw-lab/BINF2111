#!/bin/bash

string1="this is a string"      # create a string variable with contents
string2=""                      # create a string variable without contents

num1=3                          # create some integer variables
num2=7
num3=1

array=("string1" "string2" "string3") # create an array variable

#------------------------------------------------ IF STATEMENTS ------------------------------------------------

# Test if num1 > num2
if [[ $num1 -gt $num2 ]]; then
    echo "Number 1 is greater than number 2"
fi

# Test if num1 < num2
if [[ $num1 -lt $num2 ]]; then
    echo "Number 1 is less than number 2"
else
    echo "Number 1 is NOT less than number 2"
fi

# Test if num1 ≥ num2. If not, test if num1 ≤ num2
if [[ $num1 -ge $num2 ]]; then
    echo "Number 1 is greater than or equal to number 2"
elif [[ $num1 -le $num2 ]]; then 
    echo "Number 1 is less than or equal to number 2"
fi

# Test if num1 < num2 AND num2 ≥ num3 using &&
if [[ $num1 -lt $num2 && $num2 -ge $num3 ]]; then
    echo "Number 1 is less than number 2 AND number 2 is greater than number 3"
fi

# Test if num1 < num2 or num2 = num3 using ||
if [[ $num1 -le $num2 || $num2 -eq $num3 ]]; then
    echo "Number 1 is less than number 2 OR number 2 is equal to number 3"
fi

#------------------------------------------------ FOR LOOPS ------------------------------------------------

# Loop through numbers 1 through 10, add them all up, print the sum
for i in {1..10}; do
    ((sum+=$i))
    echo "The sum of all the numbers thus far: $sum"
done

# Loop through the array, print out each item
for item in "${array[@]}"; do
    echo $item
done

# Loop through all the text files (end in .txt) in the current directory, find the line count for each file
for file in *.txt; do
    wc -l $file
done


#------------------------------------------------ PSEUDOCODE ------------------------------------------------

# Prompt: Print out numbers 1 - 10, distinguishing between odd and even numbers.

# The actual code                                 The pseduocode

for num in {1..10}; do                            #for loop through 1..10
    if [[ $(( $num%2 )) -eq 0 ]]; then            #   if num is even
        echo "$num is even"                       #       print "$num is even"
    else                                          #   else
        echo "$num is odd"                        #       print "$num is odd"
    fi                                            #   end if
done                                              #end for