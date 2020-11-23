#!/bin/bash
[ $# == 0 ] && echo "mypopulation y1 y2 y3 ..."
r=0
for y in $@
do
  x=${y//[!0-9]/}
  r=$(($r+$x))
done
echo $r
