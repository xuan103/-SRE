#!/bin/bash

 for x in $@

do

[ -d "/home/class/myteam/$x" ]

if [ "$?" == "0" ]

then

echo "$x already have"

else

   mkdir -p myteam/$x

fi

done

