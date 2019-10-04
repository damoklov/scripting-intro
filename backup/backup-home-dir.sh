#!/bin/bash
# Backups home folder every one minute
# Use the following command with this script:
# */1 * * * * /path/to/directory/backup-home-dir.sh


backuptime=`date +%d-%b-%y-%T`
sourcedir=/home/$USER/
dest=/home/$USER/backup-$backuptime.tar.gz # change destination folder here
tar -cpzf $dest $sourcedir
