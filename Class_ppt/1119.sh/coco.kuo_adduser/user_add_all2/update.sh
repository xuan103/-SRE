#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p 'Which User Do You Want To Update Passwd: ' ans
read -p 'New Passwd: ' ans1
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
  then
    echo "$ans Account doesn't exist"
  else
    echo "${ans}:${ans1}" > passwd.txt
    sudo chpasswd < passwd.txt
    echo "$ans Account Update!!"
fi
fi
