#!/bin/bash
# Takes single filename as an argument and adds execute permissions if it is a regular file.


if [ $# -ne 1 ]
  then 
  echo "Usage: $0 file"
  exit 1
fi

if [ -f $1 ] || [ -d $1 ]
  then
  filetype=$(ls -l -d $1 | cut -b 1)
  if [ "$filetype" == "-" ]
    then
    echo "Regular file"
    chmod u=w $1
  else
    echo "Not a regular file"
  fi
else
  echo "File does not exist"
fi
