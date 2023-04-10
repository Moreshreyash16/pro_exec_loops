low=0
high=100

mid=$(((($low+$high)) / 2))
input=0
	echo "Enter 0 if num is less"
	echo "Enter 2 if num is greater"
	echo "Enter 1 if num is match"

while [[ $low -lt $high && $input -ne 1 ]]
do
	read -p "Is this your no $mid " input

 	if [ $input -eq 0 ] 
	then
	high=$mid
	mid=$(((( $low+$high ))/2 ))

	elif [ $input -eq 2 ]
	then
		low=$mid
		mid=$(((($low+$high))/2 ))

	elif [ $input -eq 1 ]
	then 
		echo "this is youre no $mid"

	fi

done
#echo $
