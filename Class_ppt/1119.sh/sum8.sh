#!/bin/bash
declare  -i  sum  no
sum=0
no=1
while [ "${no}" -lt 100 ]
do
echo 127.0.0.${no}
ping -c 3 -w 1 127.0.0.${no} > /dev/null

if [ $? == 0 ];then
  echo "AVAILABLE"
else
  echo "UNAVAILABLE"
fi

sum=${sum}+${no}
no=no+1
done



# echo  ${sum}

# 判斷 ping 是否通？
