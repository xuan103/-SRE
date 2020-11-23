#!/bin/bash
sum=0
no=1
while [ "${no}" -lt 4 ]
do
echo ${no}
sum=$((sum+no))
no=$((no+1))
done
echo  $sum
