#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p 'What do you want to delete: ' ans
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
  then
    echo "$ans Account doesn't exist"
  else
    sudo userdel -r $ans
    echo "$ans delete!!"
 fi
fi
