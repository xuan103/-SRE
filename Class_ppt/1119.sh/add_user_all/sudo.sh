#!/bin/bash

# 使用著權限選單

while :
do

echo -e '
menu:
> 1. add one user to root
> 2. add more user to root（user/stu）
> 3. break'

read -p "what do you want: " ans
case $ans in

1)
   ./sudo.sh
   break
   ;;
2)
   ./sudo.sh
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
