#!/bin/bash
# Checks if file exists and its rights.
. ./checkRights.conf


# Check if logging enabled
if [ $loggingSwitch -ne 0 ]
then
	echo 'Starting script ...' > $LOGFILE
	exec >> $LOGFILE
	exec 2>&1
fi

# Main process
echo -n $1
if [ -f $1 ]
then
	echo ' exists'
	owner=$(stat --format '%U' "$1")
	if [ $owner = $USER ]
	then
		echo 'You are the owner'
		if [ -w $1 ]
		then
			echo 'You can write into this file'
		else
			echo 'You do not have write permission'
		fi
	else
		echo 'You are not an owner'
	fi
else
	echo ' does not exist'
fi
