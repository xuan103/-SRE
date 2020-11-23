#!/bin/bash

# 新增帳號選單

while :
do

echo -e '
menu:
> 1. add one user
> 2. add more user（user/stu）
> 3. break'

read -p "what do you want: " ans
case $ans in

1)
   ./user1.sh
   ;;
2)
   ./user2.sh
   ;;
3)
   break
   ;;
*)
   echo "Please select"
esac
echo "Thanks"
done
