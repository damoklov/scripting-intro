#!/bin/bash
# Does an 'ls -l' command on each of its arguments only if the argument is the name of a regular file.


function checkFile() {
  if [ -f $1 ] || [ -d $1 ]
    then
    filetype=$(ls -l -d $1 | cut -b 1)
    if [ "$filetype" == "-" ]
      then
      fileIsRegular=1
    else
      fileIsRegular=0
    fi
  else
    fileIsRegular=0
  fi
}

if [ $# -eq 0 ]
  then
  echo "Usage: $0 file1 [file2 ...]"
  exit 1
fi

for file in "$@"
do
  checkFile $file
  if [ $fileIsRegular -eq 1 ]
    then
    ls -l $file
  fi
done
