read -p "enter a number" num
sum=1
for ((i=1;i<=num;i++))
do
	#sum=`echo $sum | awk "{print 1*$i}"`
	#finalsum=`echo $final_sum | awk "{print 1*$sum}"`
	sum=$(($sum*$i))
done
echo $sum
