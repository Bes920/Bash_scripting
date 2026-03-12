#!/bin/bash 
#today we're working on arguments in scripts 
#checking number of lines in a directory 
#check_number=$(ls -l $1 | wc -l)
#if [ $# -ne 1 ]
#then 
 # echo "You must enter only one arguement."
  #echo "Please try with one arguement."
# exit 1
#fi 

#echo "The number of lines in the directory $1 is $((check_number -1)) "

#trying some stuff 

echo "Welcome on besong's computer whats do you want"
echo "1 - learn who I am ."
echo "2 - Try to get info form my server. "
echo "3 - Just want to steal data without your concern"
echo "4 - I don't care about you I just want the PC."
echo "5 - non of the above just exit me out of this script."

echo "Choose Your optiion by entering the appropriate number"
if  [ $# -eq 1 ]
then
  echo "Echo you choosed the option $1"
case $1 in 
  1) echo "Besong is just an enthousiast.";;
  2) echo "This is't yet available try later";;
  3) echo "Stealing isn't good ask or better steal build yours";;
  4) echo "Ok man I'm giving you the PC for the franc";;
  5) echo  "No problem man, exiting...."
  exit 5;;
  *) echo "wrong option choose an option between 1..5";;
esac
else 
 echo "Enter exactly one argument look at the following example"
 echo "Example: './argument' 5"
  exit 6
fi 

