#for – do – done block
NUMS="1 2 3 4 5 6 "
for i in $NUMS
do
	 q=`expr $i + 1` #use grave accent character (คีย์ใต้ Esc)
	  printf "%d\n" $q #should see 2 3 4 5 6 7
  done

