budget=100
target=200
while [ $budget -gt 0 ]
do
	bet=$((RANDOM % 2 + 1))
	if [ $budget -eq $target ]
	then
		break
	elif [ $bet -eq 1 ]
	then
		budget=$(($budget - 1))
		loss=$(($loss+1))
	elif [ $bet -eq 2 ]
	then
		budget=$(($budget + 2))
		no_wons=$(($no_wons+1))
	fi
	no_of_bets=$(($no_of_bets+1))
done
echo "no of times won :" $no_wons
echo "no of bets :" $no_of_bets
echo "no of losses :" $loss
echo "budget :" $budget
