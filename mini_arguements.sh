#!/bin/bash 
#mini_project to test argument 

echo "This is a basic argument script to test the use of arguements and also try to implement case_management"
echo "choose option by entering the number  of the option and youbwant to test "
echo "1 - Trying ping "
echo "2 - Tring to learn about nmap "
echo "3 - perform a basic scan with nmap "
echo "4 - check if a target is reachable"
 
echo "Enter your option for the second arguement"
echo "1 - checking the number of lines in adirectory"
echo "2 - looking if a specific file is present in a directory"
echo "3 - check if user is root"
if [ $# -eq 2 ]
then 
case $1 in 
   1) echo "Ping is a tool used to check if a user is reachable on the network"
     echo  "Example: ping IP";;
   2) echo "Nmap is a network scanning tool to check if the a host is having certain ports open or to find the available host on the network"
      echo "Example: nmap -sV IP";;
   3) echo "perfoming a scan with nmap"
   read IP 
   nmap  IP ;;
   4) echo "Enter the IP of the target"
      read IP 
      ping -c 2 $IP ;;
   *) echo "choose a valid option "
esac 

case $2 in 
   1) echo "Enter the directory"
    read  directory 
    check=$(ls -lh $directory | wc -l)
      echo "The number of lines in the directory:$directory $(($check-1))";;
   2) echo "This functionality is not available";;
   3) echo  "This functionality is not available";;
   *) echo "Wrong option"
esac 

else 
   echo "Error enter only two(02) arguement look at the example below" 
   echo "Examole:./mini_arguements.sh 4 1"
fi 
