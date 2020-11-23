#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p "Enter head name To Chmod: " ans
read -p "Enter Start value To Chmod: " start
read -p "Enter End Value To Chmod: " end
 for ((no=${start};no<=${end};no=no+1))
do
  account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans$no)
  if [ ! -n "$account" ]
  then
    echo "$ans$no Account Doesn't Exist"
  else
    sudo usermod -aG sudo $ans$no
    echo "$ans$no Chmod!"
  fi
done
fi
