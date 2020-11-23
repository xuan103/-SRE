#!/bin/bash
echo '
      Menu
    1. Update A Account
    2. Update A Series Account
    3. Exit
'
while :
do
read -p 'Please Select 1,2,3: ' ans
case $ans in
1)
  ./update.sh
  break
  ;;
2)
  ./updates.sh
  break
  ;;
3)
  break
  ;;
*)
  echo "Please Select 1,2,3"
  ;;
esac
done
echo "Thanks"
