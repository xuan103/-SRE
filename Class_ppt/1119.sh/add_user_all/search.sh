#!/bin/bash

# 查詢使用著

read -p 'user?' ans
a=$(cat /etc/passwd | cut -d ':' -f1 | grep -x $ans)
if [ ! -n "$a" ]
then
  echo "You do not have user!"
else
  echo "You already have!"
fi
