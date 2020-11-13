#!/bin/bash
read -p 'input your dirctory: ' ans
[ -d $ans ] && echo 'You already have!'
[ ! -d $ans ] && mkdir $ans && echo 'You have new one.'
