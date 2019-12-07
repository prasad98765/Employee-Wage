#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
WORKING_HOUR=8
PART_DAY_WORKING_HOUR=4
FULL_DAY_WORKING_HOUR=8
PART_TIME=0
FULL_TIME=1
ABSENT=2
WORKING_DAY_PER_MONTH=20
DAILY_WAGE=0
DAY=1
	employee=$((RANDOM%2))
	if [[ $employee -eq 0 ]]
	then
		echo "Employee Absent"
	else
		echo "Emoloyee Present"
		while [[ $DAY -lt 20 ]]
		do 
		 	partFullTime=$((RANDOM%3))
			case $partFullTime in
			$PART_TIME)
				   echo "He is work Parttime"
				   echo "Working hour is" $PART_DAY_WORKING_HOUR
				   DAILY_WAGE=$(( $WAGE_PER_HOUR * $PART_DAY_WORKING_HOUR ))
				   ;;
			$FULL_TIME)
				   echo "He is work FullTime"
				   echo "Working hour is" $FULL_DAY_WORKING_HOUR
				   DAILY_WAGE=$(( $WAGE_PER_HOUR * $FULL_DAY_WORKING_HOUR ))
				   ;;
			$ABSENT)
					echo "Employee Absent"
		esac
		DAY=$(($DAY + 1))
		echo "Daily Wage $DAY" $DAILY_WAGE
		done
	fi



