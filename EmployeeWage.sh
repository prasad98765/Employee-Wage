#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
WORKING_HOUR=8
PART_TIME=0
FULL_TIME=1
ABSENT=2
WORKING_DAY_PER_MONTH=20
COUNT=0
TOTAL_HRS=0


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
while [[ DAY -lt WORKING_DAY_PER_MONTH ]]
do
		partFullTime=$((RANDOM%3))
		HRS="$( partFulltimeWork $partFullTime )"
		#EMPLOYEE_TOTAL_HRS=$(( $HRS + $EMPLOYEE_TOTAL_HRS )) 
		dailyWage=$(( $WAGE_PER_HOUR * $HRS ))
		dailyWage[((COUNT++))]=$dailyWage
		Total_Wage=$(( $Total_Wage + $dailyWage ))
		TOTAL_HRS=$(( $TOTAL_HRS + $HRS ))
		totalHrs[(($COUNT))]=$TOTAL_HRS 
		DAY=$(($DAY + 1))
done
echo ${dailyWage[@]}
echo ${totalHrs[@]}
echo "Total Wage" $Total_Wage
echo "Total Hrs" $TOTAL_HRS


