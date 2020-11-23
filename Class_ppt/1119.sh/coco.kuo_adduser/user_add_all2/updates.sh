#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p "Enter Head Name To Update: " ans
read -p "Enter Start Value To Update: " start
read -p "Enter End Value To Update: " end
read -p "Enter All New Passwd: " ans1
 for ((no=${start};no<=${end};no=no+1))
do
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans$no)
if [ ! -n "$account" ]
  then
    echo "$ans$no Account doesn't exist"
  else
    echo "$ans$no:$ans1" > passwd.txt
    sudo chpasswd < passwd.txt
    echo "$ans$no Account Update!!"
fi
done
fi
