read -p "enter a number" num
for ((i=2;i<=num;i++)) 
do	
	for ((j=2;j<=i/2;j++))
		do
		if [ [ $((i%j)) -ne 0] && [ i -ne j ] ]
		then
			echo "$i is a prime number"
			
		fi
	done
done