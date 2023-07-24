#!/bin/bash

read -p "Enter the name of a directory: " name

if [ ! -d "$name" ]; then
    echo Error: Directory '$directory_name' does not exist.
else
	echo Directory $name exists
fi


echo Files in the directory $name : 
ls $name

echo Sorted Order of Files in Directory $name is :
ls -v $name


sorted_order=$(ls $name | sort)
echo Sorted Files $name :
echo $sorted_order

sorted="Down/Sorted"
mkdir -p $sorted

moved_files=0
for file in $name/*;do
	if [ -f $file ];then
		mv $file $sorted
		((moved_files++))
	fi
done
echo Moved $moved_files Files in $sorted	

