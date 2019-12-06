#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"


employee=$((RANDOME%2))

if [[ $employee -eq 0 ]]
then
	echo "Absent"
else
	echo "Present"
fi
