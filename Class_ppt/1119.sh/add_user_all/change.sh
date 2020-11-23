#!/bin/bash

# 更改密碼選單

while :
do

echo -e '
menu:
> 1. change one user
> 2. change more user（user/stu）
> 3. break'

read -p "what do you want: " ans
case $ans in

1)
   ./change1.sh
   ;;
2)
   ./change2.sh
   ;;
3)
   break
   ;;
*)
   echo "Please select"
esac
echo "Thanks"
done
