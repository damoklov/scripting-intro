#!/bin/bash
# A script that uses a for loop to count from 3 to 7


current=3

while [ $current != 8 ]
do
	echo 'Current value is:' $current
	current=$(( current + 1))
done
