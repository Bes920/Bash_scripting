#!/bin/bash 


#checking to make sure the user has entered exactly 2 arguments
if [ $# -ne 2 ]
then 
    echo  "Usage: ./backup.sh <source_directory>  <destination_directory>"
    echo " Please try again."
exit 1
fi 



#checking to see if  rsync is installed 
if  ! command -v rsync > /dev/null 2>&1
then 
  echo "The script requires rsync to be installed."
  echo "Please use your distribution's package manager to install"
exit 2
fi 

#capturi g the curent date, and  storing it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)


rsync_options="-avb --backup-dir $2/$current_date --delete "
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log

