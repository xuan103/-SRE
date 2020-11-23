#!/bin/bash
echo '
     Menu
   1. Delete a Account
   2. Delete a series Account
   3. Exit
'
while :
do
read -p 'Please Select 1,2,3: ' ans
case $ans in
1)
  ./delete.sh
  break
  ;;
2)
  ./deletes.sh
  break
  ;;
3)
  break
  ;;
*)
  echo 'Please Select 1,2,3'
esac
done
echo 'Thanks'
