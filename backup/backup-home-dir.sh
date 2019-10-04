#!/bin/bash
# Backups home folder every one minute
# Place this script not into your home directory!
# Use the following command with this script:
# */1 * * * * /path/to/directory/backup-home-dir.sh


backuptime=`date +%d-%b-%y-%H-%M-%S`
sourcedir=/home/$USER/
dest=/home/$USER/backup-$backuptime.tar.gz # change destination folder if needed

tar -cpzf $dest $sourcedir
