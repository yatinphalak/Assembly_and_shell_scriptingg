#!/bin/bash


for i in {1..8}
do 
	for j in {1..8}
	do
		color=$(( (j+i) % 2 ))  
		
		if [ "$color" -eq 0 ]; then
			echo -ne "\033[47m"
			echo -ne "\033[0;30m"
			echo -n " 0 "
		else
			echo -ne "\033[40m"
			echo -ne "\033[0;37m"
			echo -n " 1 "
		fi
		#echo -n "  "
	done
	echo -ne "\033[0m"
	echo ""
done

echo -ne "\033[0m"
echo ""
