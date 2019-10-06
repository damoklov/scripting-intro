#!/bin/bash
# Backups home folder every one minute
# Place this script not into your home directory!
# Use the following command with this script:
# */1 * * * * /path/to/directory/backup-home-dir.sh

backuptime=`date +%d-%b-%y-%H-%M-%S`
sourcedir=/home/$USER/
dest=/home/$USER/backup-conf.tar.gz # change destination folder if needed


function checkPresence() {
  tar tf $dest | while read line
    do
     if ! [ -e "/$line" ]
     then
       tar -C $(echo "/$line" | sed -r "s/(.+)\/.+/\1/") -xzf $dest $line --transform 's?.*/??g'
       echo "Backup of $line completed"
     fi
   done
}


if ! [ -e $dest ]
then
  find $sourcedir -name '*.conf' -o -name '*.config' -print0 | tar -cpzf $dest --null -T -
  echo "$dest was created"
  checkPresence
else
  checkPresence
fi

echo 'Done'
