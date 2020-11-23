#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p "Enter Head Name To Delete: " ans
read -p "Enter Start value To Delete: " start
read -p "Enter End Value To Delete: " end
 for ((no=${start};no<=${end};no=no+1))
do
  account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans$no)
  if [ ! -n "$account" ]
  then
    echo "$ans$no Account doesn't exist"
  else
    sudo userdel -r $ans$no
    echo "$ans$no delete!!"
fi
done
fi
