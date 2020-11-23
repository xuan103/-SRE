#!/bin/bash
echo '
        Menu
    1. Chmod A Account
    2. Chmod A Sereis Account
    3. Exit
'
while :
do
read -p 'Please Select 1,2,3: ' ans
case $ans in
1)
  ./chmodsudo.sh
  break
  ;;
2)
  ./chmodsudos.sh
  break
  ;;
3)
  break
  ;;
*)
  echo 'Please Select 1,2,3'
  ;;
esac
done
echo 'Thanks'
