#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
FULL_DAY_WORKING_HOUR=8
	employee=$((RANDOM%2))

	if [[ $employee -eq 0 ]]
	then
		echo "Absent"
	else
		echo "Present"
		dailyWage=$(( $WAGE_PER_HOUR * $WORKING_HOUR ))
		echo $dailyWage
	fi



