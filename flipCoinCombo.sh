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

#!/bin/bash
declare -A dict
headcount=0
tailcount=0
for ((i=1;i<=20;i++))
do
   randomNumber=$(($RANDOM%2))
   if [ $randomNumber -eq 1 ]
   then
      headcount=$(($headcount+1))
   else
      tailcount=$(($tailcount+1))
   fi
done
head_percentage=$(($headcount*5))
tail_percentage=$(($tailcount*5))
dict[H]=$head_percentage
dict[T]=$tail_percentage


