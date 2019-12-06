#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
WORKING_HOUR=8
PART_DAY_WORKING_HOUR=4
FULL_DAY_WORKING_HOUR=8
PART_TIME=0
FULL_TIME=1
	employee=$((RANDOM%2))

	if [[ $employee -eq 0 ]]
	then
		echo "Absent"
	else
		echo "Present"
		dailyWage=$(( $WAGE_PER_HOUR * $WORKING_HOUR ))
		echo $dailyWage
		 partFullTime=$((RANDOM%2))

		case $partFullTime in
			$PART_TIME)
				   echo "Employee is Parttime"
				   echo "Working hour is" $PART_DAY_WORKING_HOUR
				   dailyWage=$(( $WAGE_PER_HOUR * $PART_DAY_WORKING_HOUR ))
				   echo "Daily Wage" $dailyWage	
				   ;;
			$FULL_TIME)
				   echo "Emplyee is FullTime"
				   echo "Working hour is" $FULL_DAY_WORKING_HOUR
				   dailyWage=$(( $WAGE_PER_HOUR * $FULL_DAY_WORKING_HOUR ))
                                   echo "Daily Wage" $dailyWage 
				   ;;
		esac
	fi



