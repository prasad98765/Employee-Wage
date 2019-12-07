#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
#WORKING_HOUR=8
PART_TIME=0
FULL_TIME=1
ABSENT=2
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=100
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
while [[ TOTAL_HRS -lt TOTAL_WORKING_HRS && DAY -lt WORKING_DAY_PER_MONTH ]]
do
		partFullTime=$((RANDOM%3))
		HRS="$( partFulltimeWork $partFullTime )"
		TOTAL_HRS=$(( $HRS + $TOTAL_HRS ))
		DAY=$(($DAY + 1))
		echo "Total Employee Hrs" $TOTAL_HRS
		echo "Daily Wage $DAY" $DAILY_WAGE
done



