count1=1
count2=1
while [ $count1 -le 10 ]
do
	random=$((RANDOM % 2 + 1))
	if [ $count2 -eq 11 ]
        then
                break

	elif [ $random -eq 1 ]
	then
		echo "HEADS"
		count1=$(($count1+1))

	elif [ $random -eq 2 ]
	then
		echo "TAILS"
		count2=$(($count2+1))
	fi

done
echo $count1
echo $count2
