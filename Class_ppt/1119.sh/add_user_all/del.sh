#!/bin/bash

# 刪除帳號選單

while :
do

echo -e '
menu:
> 1. del one user
> 2. del more user（ex: user/stu）
> 3. break'

read -p "what do you want: " ans
case $ans in

1)
   ./del1.sh
   break
   ;;
2)
   ./del2.sh
   break
   ;;
3)
   break
   ;;
*)
   echo "Please select"
esac
echo "Thanks"
done
