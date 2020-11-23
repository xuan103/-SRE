#!/bin/bash
read -p 'What do you want to Search: ' ans
account=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$account" ]
then
  echo "Account doesn't exist"
else
  echo "Account already exist"
fi
