#!/bin/bash 
#chekcing number in range 
for n in {1..10}
do 
  echo $n
  sleep 0.5
done
  echo "The number is out of scope "

#compressing  file 
for file in logfiles/*.log 
do 
  tar -czvf $file.tar.gz $file
done

#mini-project 


commands="ssh curl htop netcat"

for cmd in $commands
do
    command -v "$cmd" > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "$cmd is installed"
    else
        echo "$cmd is NOT installed"
    fi
done

