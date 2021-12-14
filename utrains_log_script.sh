#!/bin/bash

# --------- @Author : Utrains 
# ------- Date : Dec 2021 ----------

#Description : this script uses the cron daemon, to create a set of log files

DIRECTORY = "/tmp/utrains_logs"
if [ ! -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir /tmp/utrains_logs
fi
touch /tmp/utrains_logs/utrains_$(date +%b_%d_%Y_"%H-%M")
