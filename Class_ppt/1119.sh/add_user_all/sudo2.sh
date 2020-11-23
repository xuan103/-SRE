#!/bin/bash

# 建立多個帳號

check=$(sudo -l | head -n 1 | fmt -u | cut -d' ' -f1)

if [ $check != 'Matching' ]

then
	
	echo 'You Do Not A Root!'

else

	read -p "head name: " ans
	read -p "start value: " star
	read -p "end value: " end

for ((i=$star; i<=$end; i++))

	do

grep -i "${ans}" /etc/passwd &>/dev/null

   	if [ ! $? == 0 ]; then

      echo "the user is not exists!"

    else
        sudo usermod -aG sudo $ans$i 
		echo "user readly chmod!" 
fi
	done

	fi