
#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4

declare -A Wage

days=0
Total_Wage=0
Total_Working_Hours=0
function getHours(){
	dailyhrs=$1
	case $dailyhrs in
   0)
	dailyhrs=0
   ;;
   1)
   dailyhrs=$HALF_DAY_WORKING_HOUR
   ;;
   2)
   dailyhrs=$FULL_DAY_WORKING_HOUR
   ;;
esac
echo $dailyhrs
}


while [[ $Total_working_hours -le 100 && $days -le 20 ]] 
do
	days=$(($days+1))
	attendance=$((RANDOM%2))
	hrs=$(getHours $attendance)
	daily=$(( $hrs * $WAGE_PER_HOUR ))
	# Total_Working_Hours=$(($Total_Working_Hours + $hrs))
	Total=$(( $Total+$daily ))
	Wage["$days"]=" $days $daily  $Total"
	
done

echo ${!Wage[@]}
for(( i=1;i<=20;i++ ))
do
	echo "days${Wage[$i]}"
done

