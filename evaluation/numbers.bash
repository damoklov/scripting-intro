#!/bin/bash
# A script that asks for two numbers, and outputs the sum and product.


echo -n "Enter a number : "
read first
echo -n "Enter another number : "
read second

let sum="$first+$second"
let product="$first*$second"

echo -e "Sum\t: $first + $second = $sum" 
echo -e "Product\t: $first * $second = $product"
 