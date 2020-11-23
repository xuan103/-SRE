#!/bin/bash

# 刪除帳號

read -p 'del user:? ' ans
[ -d $ans ] && echo 'You do not have user !'
[ ! -d $ans ] && sudo userdel -r $ans && echo 'You already del.'
