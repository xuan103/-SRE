#!/bin/bash
while :
do
echo '
        Menu
     1. Search Account
     2. Creat Account
     3. Delete Accout
     4. Update Password
     5. Sudo Chmod
     6. Exit
'
read -p 'Please select 1,2,3,4,5,6: ' ans
case ${ans} in
1)
  ./search.sh
  ;;
2)
  ./create.sh
  ;;
3)
  ./main_delete.sh
  ;;
4)
  ./main_update.sh
  ;;
5)
  ./main_sudo.sh
  ;;
6)
  break
  ;;
*)
  echo "Please Select 1,2,3,4,5,6"
  ;;
esac
done
echo "Thanks"
