#!/bin/bash 


#checking if a command is present 

command=htop
sudo apt install htop 
if [ $? -eq 0 ]
then 
  echo "The package has been installed"
  echo "This is the fully qualifies path:"
 which $command 
else 
  echo "The package wasn't installed"
fi 

# checking if a file is present 
file=linpeas.sh 
locate $file >> file_location.txt 
if [ $? -eq 0 ]
then 
  echo "You can see the location of the file in file_location.txt"
else 
  echo "The file doesn't exist"
fi 


#checking if a directory  exists 
directory=/tmp 
if [ -d $directory ]
then 
  echo "The directory exists"
  status=0
else 
 echo "The directory doesn't exits"
  status=1
   
fi 

echo "Exit code: $status"
exit "$status"


