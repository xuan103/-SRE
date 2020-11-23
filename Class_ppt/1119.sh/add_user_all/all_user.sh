#!/bin/bash

# 帳號選單

while :
do

echo -e '
menu:
> 1. have user?
> 2. add user?
> 3. del user?
> 4. add sudo ?
> 5. exit?'

read -p "what do you want: " ans
case $ans in

1)
   ./search.sh
   break
   ;;
2)
   ./user.sh
   break
   ;;
3)
   ./del.sh
   break
   ;;
4)
   ./change.sh
   break
   ;;
5)
   ./sudo.sh
   break
   ;;
e)
   exit
   ;;
*)
   echo "Please select"
esac
# echo "Thanks"
done
