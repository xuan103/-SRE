#!/bin/bash
read -p "Give me a head name: " ans
read -p "Give me a Start value: " start
read -p "Give me a End Value: " end
 for ((no=${start};no<=${end};no=no+1))
do
  account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans$no)
  if [ ! -n "$account" ]
  then
    sudo useradd -m -s /bin/bash $ans$no
    echo "Create $ans$no !!"
  else
    echo "$ans$no Account already exist"
  fi
done



