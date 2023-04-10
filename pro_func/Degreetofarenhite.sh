echo "Select the following options to perform the conversion"
echo "Select 1 to Convert C to F "
echo "Select 2 to Convert F to C "

echo "Enter the values are (0 C/32 F) and (100 C/ 212 F)"

function conversion()
{

read -p "Enter the option : " option

read -p "Enter the num : " value

	case $option in
	1)
	degctodegf=`echo $value $value2 | awk '{print ($1*9/5)+32}'`
	echo $degctodegf degF
	;;

	2)
	degftodegc=`echo $value | awk '{print ($1-32)*5/9}'`
	echo $degftodegc degC
	;;

	*)
	echo "other"
	;;
	esac

}

conversion
