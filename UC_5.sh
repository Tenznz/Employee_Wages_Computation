#!/bin/bash

isPartTime=1
isFullTime=2
noOfworkingDays=20
empRatePerHr=20
empTotalFullTimeHr=0
empTotalPartTimeHr=0
salary=0
for((i=1; i<=$noOfworkingDays; i++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
 		$isFullTime)
			
     			empHrs=8
			empTotalFullTimeHr=$(($empTotalFullTimeHr+$empHrs))
     			;;
		$isPartTime)
     			empHrs=4
			empTotalPartTimeHr=$(($empTotalPartTimeHr+$empHrs))
   	  		;;
 		*)
     			empHrs=0
			;;
	esac

	salary=$(($empHrs*$empRatePerHr+$salary))
	TotalSalary=$(($TotalSalary+$salary))
done
echo "Employee full time hour:" $empTotalFullTimeHr
echo "Employee Part time hour is:" $empTotalPartTimeHr
echo "Totalsalary: $TotalSalary"
