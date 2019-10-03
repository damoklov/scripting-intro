#!/bin/bash
# Checks if two files exist.


echo -n $1
if [ -f $1 ]
then
	echo ' exists'
else
	echo ' does not exist'
fi

echo -n $2
if [ -f $2 ]
then
	echo ' exists'
else
	echo ' does not exist'
fi
