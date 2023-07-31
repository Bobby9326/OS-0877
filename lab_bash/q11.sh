for file in $(find . -type f -name "*.c")
do
	trimmedName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
	fileName=`echo $file | cut -d'/' -f2`
	gcc -o $trimmedName $fileName 2>/dev/null
	if [ -f $trimmedName ]
	then
		ans=$(./$trimmedName)
		if [ $ans = "20" ]
		then
			score=10
		else
			score=7
		fi
	else
		score=5
	fi
	printf "%s \t%d\n" $fileName $score
done
