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

        if [ $1 -eq $rev ]
        then
                echo "$1 is palindrome number"
        else
                echo "$1 is not a palindrome number"
        fi
}
read -p "enter a number " num
palindrome $num
