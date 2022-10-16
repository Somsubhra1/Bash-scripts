#!/bin/bash
echo -n "Enter a number: "
read x

if [ $((x%2)) == 0 ]; then
	echo "Number is Even"
else
	echo "Number is Odd"
fi
