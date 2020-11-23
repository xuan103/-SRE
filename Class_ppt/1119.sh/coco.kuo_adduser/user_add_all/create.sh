#!/bin/bash
echo '
       Menu
     1. Create a account
     2. Create a series account
     3. Run away~~~
'
while :
do
read -p 'Please Select 1,2,3: ' ans
case ${ans} in
1)
  ./account.sh
  break
  ;;
2)
  ./accounts.sh
  break
  ;;
3)
  break
  ;;
*)
  echo "Please Select 1,2,3"
esac
done
echo "Thanks"
