function palindrome () {
        
temp=$1
rev=0
rem=r

        while [ $temp -ne 0 ]
        do

                rem=$(($temp%10))
                rev=$(((($rev*10)) + $rem))
                temp=$(($temp/10))

        done

        if [ $2 -eq $rev ]
        then
                echo "both numbers are palindrome number"
        else
                echo "both numbers not a palindrome number"
        fi
}
read -p "enter  number 1 " num1
read -p "enter  number 2 " num2
palindrome $num1 $num2