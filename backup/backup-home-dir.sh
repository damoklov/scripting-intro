#!/bin/bash
# Backups home folder every one minute
# Place this script not into your home directory!
# Use the following command with this script:
# */1 * * * * /path/to/directory/backup-home-dir.sh

backuptime=`date +%d-%b@%T`
sourcedir=$HOME
dest=$HOME/backup-conf.tar.gz # change destination folder if needed


function makeBackup() {
  tar -C /${line%/*} -xzf "${dest}" "${line}" --transform 's?.*/??g' 2>/dev/null
}

function checkPresence() {
  tar tf $dest | while read line
    do
     if ! [ -e "/${line}" ]
     then
       if ! makeBackup ; then mkdir "/${line}" ; fi
       echo "Backup of ${line} completed"
     fi
   done
}


if ! [ -e $dest ]
then
  find "${sourcedir}" -path '*/Trash/*' -prune -o -path '*/.cache/*' -prune -o \( -iname \*config -o -iname \*conf \) -print0 | tar -cpzf $dest --null -T -
  echo "${dest} was created"
  checkPresence
else
  checkPresence
fi

echo "Done at $backuptime"
