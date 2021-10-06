#!/bin/bash -x
#Store the day and dailywage along with totalwage

# CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

# VARIABLS
totalEmpHrs=0
totalWorkingDays=0

declare -A dailywage

function getWorkHrs() {
	local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
			empHrs=8;;
		$IS_PART_TIME)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	echo $empHrs
}

function getEmpWage() {
	local empHrs=$1
	echo $(($empHrs*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $toatalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(($totalEmphrs+$empHrs))
	dailyWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totlSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
