#!/bin/bash
check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)
if [ $check != 'Matching' ]
then
echo 'You Do Not A Root!'
else
read -p "Enter head name To Create: " ans
read -p "Enter Start value To Create: " start
read -p "Enter End Value To Create: " end
 for ((no=${start};no<=${end};no=no+1))
do
  account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans$no)
  if [ ! -n "$account" ]
  then
    sudo useradd -m -s /bin/bash $ans$no
    echo "$ans$no:$ans$no" > passwd.txt
    sudo chpasswd < passwd.txt
    echo "Create $ans$no !!"
  else
    echo "$ans$no Account already exist"
  fi
done
fi
