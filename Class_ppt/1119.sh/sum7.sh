#!/bin/bash
declare  -i  sum  no
sum=1
no=1
while [ "${no}" -lt 100 ]
do
echo 127.0.0.${no}
sum=${sum}+${no}
no=no+1
done
# echo  ${sum}
# 顯示127.0.0.1~127.0.0.99
