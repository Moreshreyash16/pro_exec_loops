function prime()
{
temp=0

for ((i=2;i<=$1/2;i++))
do
	if [ $(($1%i)) -eq 0 ]
	then
		temp=$(($1 + 1))
	fi
done
	if [ $temp -eq 0 ]
	then
		echo "$1 is a Prime Number "
	else
		echo "$1 is not a Prime Number"
	fi
}

function palindrome ()
{
temp=$1
rev=0
rem=r

        while [ $temp -ne 0 ]
        do

                rem=$(($temp%10))
                rev=$(((($rev*10)) + $rem))
                temp=$(($temp/10))

        done

echo "Palindrome of number :" $rev

}

function checkpalindrome()
{
temp=$1
rev=0
rem=r

        while [ $temp -ne 0 ]
        do

                rem=$(($temp%10))
                rev=$(((($rev*10)) + $rem))
                temp=$(($temp/10))

        done

for ((i=2;i<=$rev/2;i++))
do
        if [ $(($rev%i)) -eq 0 ]
        then
                echo "$rev is  not prime number"
                exit 0
        fi
done
echo "$rev is a prime no"
}

prime 45
palindrome 56
checkpalindrome 58
