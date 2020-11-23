#!/bin/bash
read -p 'Give me a name: ' ans
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
then
  sudo useradd -m -s /bin/bash $ans
  echo "$ans Account Create!!"
else
  echo "$ans Account already exist"
fi

