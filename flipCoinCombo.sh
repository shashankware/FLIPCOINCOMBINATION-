#!/bin/bash
head=1
tail=0
randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq 1 ]
then
 echo "head"
else
   echo "tail"
fi

