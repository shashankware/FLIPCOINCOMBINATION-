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


#!/bin/bash
 doublet[1]=11
doublet[2]=10
doublet[3]=01
doublet[4]=00

triplet[1]=111
triplet[2]=011
triplet[3]=001
triplet[4]=000
triplet[5]=101
triplet[6]=110
triplet[7]=010
triplet[8]=100


HHcount=0
HTcount=0
THcount=0
TTcount=0
for ((i=1;i<=20;i++))
do
   temp=${doublet[$RANDOM%${#doublet[*]}]}
   if [ $temp -eq 11 ]
   then
      HHcount=$(($HHcount+1))
   elif [ $temp -eq 10 ]
   then
      HTcount=$(($HTcount+1))
   elif [ $temp -eq 01 ]
   then
      THcount=$(($THcount+1))
   else
      TTcount=$(($TTcount+1))
   fi
done

HHper=$(($HHcount*5))
HTper=$(($HTcount*5))
TTper=$(($TTcount*5))
THper=$(($THcount*5))


dict[HH]=$HHper
dict[HT]=$HTper
dict[TT]=$TTper
dict[TH]=$THper


