#!/bin/bash 
#check if the user is root
ran_at() { 
  echo "The script ran at $(date)" 
}
if [ $EUID -eq 0 ]
then 
  echo "The user is root" >> root.txt
ran_at  >> root.txt
else 
  echo "The user is not root" >> not_root.txt
ran_at >> not_root.txt
fi 

#system update abd ugrade 

echo "The system is about to update and upgrade"
 sudo apt update 
 sudo apt upgrade -y 
