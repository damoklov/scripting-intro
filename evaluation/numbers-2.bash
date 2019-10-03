#!/bin/bash
# A script that asks for two numbers, and outputs the sum and product (improved 2.0).


function check {
if [ $1 -lt 1 -o $1 -gt 100 ]
then
	echo 'Wrong number!'
       exit 1
fi
}

echo -n "Enter a number (1-100): "
read first
check $first

echo -n "Enter another number (1-100): "
read second
check $second

let sum="$first+$second"
let product="$first*$second"

echo -e "Sum\t: $first + $second = $sum" 
echo -e "Product\t: $first * $second = $product"
