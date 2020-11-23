#!/bin/bash

# 增加使用著權限

read -p 'how user want sudo: ? ' ans
 [ ! -d $ans ] && sudo usermod -aG sudo $ans && echo 'readly chmod to root.'
