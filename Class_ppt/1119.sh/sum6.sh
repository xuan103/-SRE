#!/bin/bash
declare  -i  sum  no
sum=0
no=2
while [ "${no}" -lt 101 ]
do
echo ${no}
sum=${sum}+${no}
no=no+2
done
echo  ${sum}

# 偶數相加
