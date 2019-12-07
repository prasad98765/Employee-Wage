#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
WORKING_HOUR=8
PART_TIME=0
FULL_TIME=1
ABSENT=2
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=100
COUNT=0


function partFulltimeWork(){
partFullTime=$1
case $partFullTime in
      $PART_TIME)
  					DayWorkingHour=4
               ;;
      $FULL_TIME)
             	DayWorkingHour=8
               ;;
      $ABSENT)
               DayWorkingHour=0
      esac
echo $DayWorkingHour
}
while [[	DAY -lt WORKING_DAY_PER_MONTH ]]
do
		partFullTime=$((RANDOM%3))
		HRS="$( partFulltimeWork $partFullTime )"
		#EMPLOYEE_TOTAL_HRS=$(( $HRS + $EMPLOYEE_TOTAL_HRS )) 
		dailyWage=$(( $WAGE_PER_HOUR * $HRS ))
		dailyWage[((COUNT++))]=$dailyWage
      hrs=$(( $TOTAL_HRS + $dailyWage ))
		totalHrs[((COUNT++))]=$hrs 
		DAY=$(($DAY + 1))
done


echo ${dailyWage[@]}
echo ${totalHrs[@]}



