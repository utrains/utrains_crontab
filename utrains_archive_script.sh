#!/bin/bash

# --------- @Author : Utrains 
# ------- Date : Dec 2021 ----------
#
# description : in this script, we are going to group together a set of log files,
# created after a certain time (5 minutes) in a folder.
# we will then archive the folder, then delete it and only keep the archive

DIRECTORY = "/tmp/utrains_logs"
ARCHIVEDDIR=""
if [ -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY does exist.
  cd /tmp/utrains_logs

  MYDATE=$(date "+%b_%d_%Y_%H.%M.%S")
  mkdir utrains_arch_cron-$MYDATE
  mv utrains_des_* utrains_arch_cron-$MYDATE

  zip -r utrains_cron_zip_$MYDATE.zip utrains_des_* utrains_arch_cron-$MYDATE 
  
  rm -r utrains_arch_cron-$MYDATE

fi
