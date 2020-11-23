#!/bin/bash

# 建立多個帳號

clear

read -p "head name: " ans
read -p "start value: " star
read -p "end value: " end

grep -i "${ans}" /etc/passwd &>/dev/null

if [ $? == 0 ]; then

   echo "the user exists!"

else

   for ((i=$star; i<=$end; i++))

  do

        sudo useradd -m -s /bin/bash "$ans$i"
        echo "create $ans$i !!"
        echo "$ans$i:$ans$i" > passwd.txt
        sudo chpasswd < passwd.txt
		echo "passwd readly !!" 
  done

fi
