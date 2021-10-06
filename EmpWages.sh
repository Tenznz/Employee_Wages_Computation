#!/bin/bash
totalWorkingHr=100
totalWorkingDays=20
for((i=1; i<$totalWorkingHr; i++))
do
	for((j=1; j<$totalWorkingDays; j++))
	do
		wages=$(($totalWorkingHr*$totalWorkingDays))
	done
done
echo "total working of wages is:" $wages
