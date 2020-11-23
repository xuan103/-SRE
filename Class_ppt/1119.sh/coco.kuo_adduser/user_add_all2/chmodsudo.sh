#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p 'What User Do You Want To Change Root: ' ans
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
then
  echo "$ans Account Doesn't Exist"
else
  sudo usermod -aG sudo $ans
  echo "$ans Is A Root!"
fi
fi
