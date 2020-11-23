#!/bin/bash
declare  -i  sum  no
sum=0
no=1
while [ "${no}" -lt 101 ]
do
# echo ${no}
sum=${sum}+${no}
no=no+1
done
echo  ${sum}

# 1-100 相加
