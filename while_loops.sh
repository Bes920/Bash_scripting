#!/bin/bash 

#incrementing a variable 
var=0 
while [ $var -le 10 ]
do 
  echo $var
 var=$(( $var +1 ))
 sleep 0.3
done 

#checking if a file exist 
var1=~/coti.txt
while [ -f $var1 ]
do 
 echo "As from $(date) , the file exist in the directory $var1"
 sleep 5 
done 
 echo  "As from $(date), the file doesm't exist any more"


#checking for reachability of a host 
read -p "Enter host to monitor: " host
ping -c  2 $host  > /dev/null 2>&1
while [ $? -eq 0 ]
do 
  echo "The host:$host is reachable"
  sleep 3 
done 
  echo "The host:$host is not reachable"


