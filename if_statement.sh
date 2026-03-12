#!/bin/bash

#checking numbers
 mynum=20
if [ $mynum -eq  12 ]
then 
 echo "You're correct"
else 
 echo "you're wrong"
fi
#checking for file presence
if [ -f ~/doc ]
then 
  echo "The file exists."
else 
  echo "The file doesn't exist"
fi 
#checking for command presence 
command=htop
if command -v  "$command" 
then 
  echo "$command is available, let's run it .."
  $command
else 
 echo "$command is not available, lets install it "
sudo apt update && sudo apt install -y htop 
fi 
#chcking if user is root
if [ $EUID -eq 0 ]
then 
  echo "The user is root"
else 
  echo "The user is not root"
fi 
