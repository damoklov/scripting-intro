#!/bin/bash
# A script that uses an until loop to count down from 8 to 4.


current=8
until [ $current -lt 4 ]
do
	echo 'Current value is:' $current
	current=$(( current - 1))
done