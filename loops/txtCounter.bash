#!/bin/bash
# This script counts all occurancies of .txt files


ls *.txt > /dev/null 2>&1 #  in case of error
if [ $? -ne 0 ] 
then 
	echo "Total: 0 files"
else
	i=0
	for _ in *.txt
	do
		let i++
	done
	echo "Total: $i files"
fi
