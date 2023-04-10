
read -p "enter a number for nth value " n
for ((i=1;i<=n;i++))
do
	sum=`echo $i | awk '{print 1/$i}'`
	final_sum=`echo $final_sum $sum | awk '{print $1+$2}'`

done
echo $final_sum
