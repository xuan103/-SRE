#!/bin/bash
read -p 'What do you want to delete: ' ans
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
  then
    echo "$ans Account doesn't exist"
  else
    sudo userdel -r $ans
    echo "$ans delete!!"
 fi
