#!/bin/bash

declare  -i  sum  no
sum=0
no=1
while [ "${no}" -lt 101 ]
do
# echo ${no}
sum=${sum}+${no}
no=no+2
done
echo  ${sum}
# 基數相加
