#!/bin/sh

FILESDIR=$1
SEARCHSTR=$2

if [ $# -lt 2 ]
then

		echo "Not enough arguments present"
		exit 1
	
else
		if [ ! -d "$FILESDIR" ]
		then
			echo "The file directory ${FILESDIR} is invalid"
			exit 1
		else
			FILECOUNT=$(find ${FILESDIR} -type f | wc -l)
			cd ${FILESDIR}
			WORDCOUNT=$(grep -r "${SEARCHSTR}" * | wc -l)
			echo "The number of files are ${FILECOUNT} and the number of matching lines are ${WORDCOUNT}"
		fi
fi
			
	
	
	
		

