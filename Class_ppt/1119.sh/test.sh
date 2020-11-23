bigred@gw:~$ cat t1
#! /bin/bash
clear
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
fi
======
bigred@gw:~$ cat t2
#! /bin/bash
clear
read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
else
echo "pass"
fi
bigred@gw:~$
======
bigred@gw:~$ cat t3
#! /bin/bash

read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
elif   [ ${ans}  -le  90 ] ; then
   echo  "grade  B"
else
echo "grade  A"
fi
bigred@gw:~$

===
bigred@gw:~$ cat t4
#! /bin/bash

read  -p  "no?"  ans
if  [ ${ans}  -le  60 ] ;then
echo  "no pass"
elif   [ ${ans}  -le  80 ] ; then
   echo  "grade  B"
elif   [ ${ans}   -le  90 ] ; then
    echo  "grade B plus"
else
echo "grade  A"
fi
bigred@gw:~$