#!/bin/sh

WRITEFILE=$1
WRITESTR=$2


if [ $# -lt 2 ]
then
	echo "Not enough arguments"
	exit 1
fi

WRITEDIR=$(dirname $WRITEFILE)

mkdir -p $WRITEDIR
if [ $? -ne 0 ]
then 
	echo "Directory could not be created"
	exit 1
fi

touch $WRITEFILE
if [ $? -eq 0 ] && [ -w $WRITEFILE ]
then
	echo "$WRITESTR" > $WRITEFILE
	
else
	echo "Error in creating ${WRITEFILE}"
	exit 1
fi
