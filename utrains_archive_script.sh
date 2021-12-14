#!/bin/bash

# --------- @Author : Utrains 
# ------- Date : Dec 2021 ----------
#
# description : in this script, we are going to group together a set of log files,
# created after a certain time (5 minutes) in a folder.
# we will then archive the folder, then delete it and only keep the archive


DIR="/tmp/utrains_logs"
if [ -d "$DIR" ]; then
  # Control will enter here if $DIR exist.
  cd /tmp/utrains_logs

  MYDATE=$(date "+%b_%d_%Y_%H.%M.%S")
  mkdir utrains_arch_cron-$MYDATE
  mv utrains_des_* utrains_arch_cron-$MYDATE

  zip -r utrains_cron_zip_$MYDATE.zip utrains_arch_cron-$MYDATE 
  
  rm -r utrains_arch_cron-$MYDATE

fi
