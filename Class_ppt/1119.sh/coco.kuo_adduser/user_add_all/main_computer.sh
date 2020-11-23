#!/bin/bash
while :
do
echo '
        Menu
     1. Search Account
     2. Creat Account
     3. Delete a accout
     4. Run Away~~
'
read -p 'Please select 1,2,3,4: ' ans
case ${ans} in
1)
  ./search.sh
  ;;
2)
  ./create.sh
  ;;
3)
  ./delete.sh
  ;;
4)
  break
  ;;
*)
  echo "Please Select 1,2,3,4"
esac
done
echo "Thanks"
