#!/bin/bash

# Checks the equality between 2 numbers using if-else in bash
# Usage:
# sh if-else.sh <num1> <num2>
# Example:
# sh if-else.sh 2 2

a=$1
b=$2
if [ $a -eq $b ]
then 
echo "$a is equal to $b"
elif [ $a -gt $b ]
then
echo "$a is greater than $b"
else
echo "$a is lesser than $b"
fi