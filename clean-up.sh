#!/bin/bash

SOURCE_PY=/home/ludrav/ludrav/pyfiles/
SOURCE_SH=/home/ludrav/ludrav/bashfiles/
echo "this is the .py and .sh files in your current folder. Would you like to clean up?"
for FILE in $(ls *.py); do
	echo "${FILE##*/}"
done
for FILE in $(ls *.sh); do
        echo "${FILE##*/}"
done
echo "yes or no"
read ANS
if [ $ANS == "yes" ];
then
	echo "py-files or sh-files?"
	read CHOICE
	if [ $CHOICE == "py" ];
	then
		for FILE in $(ls *.py); do
			echo $FILE
			echo "==>Swosh swosh with the broomstick<=="
			mv $FILE $SOURCE_PY
		done
	
        elif [ $CHOICE == "sh" ];
        then
		for FILE in $(ls *.sh); do
			echo $FILE
			echo "==>Swosh swowh with the broomstick<=="
                        mv $FILE $SOURCE_SH
                done
	else
		echo "No such files..."
	fi
fi 
