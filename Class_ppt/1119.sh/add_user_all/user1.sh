#!/bin/bash

# 建立單個帳號

read -p 'user:? ' ans
 [ ! -d $ans ] && sudo useradd -m -s /bin/bash $ans && echo 'You have new one.'
