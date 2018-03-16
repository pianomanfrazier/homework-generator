#!/bin/bash

if [ -z "$1" ]
	then
		echo "Supply a filename"
		exit 1
fi
if [ -z "$2" ]
	then
		echo "Supply a homework number"
		exit 1
fi
HOMEWK_NUMBER=$2

CONFIG="./class.cfg"
if [ -f "$CONFIG" ]
then
	echo "$CONFIG found."
	source $CONFIG 
else
	echo "$CONFIG not found."
	exit 1
fi
# Get the config variables

echo "creating $1 dir..."
cp -r ~/bin/hwtemp $1
cd $1
echo "preparing files..."

#replace vars in template latex file
sed -i "s/MYNAMEVAR/$NAME/g" temp.tex
sed -i "s/HOMEWKNUMVAR/$HOMEWK_NUMBER/g" temp.tex
sed -i "s/INSTRUCTORVAR/$INSTRUCTOR/g" temp.tex
sed -i "s/COURSENAMEVAR/$COURSE_NAME/g" temp.tex
sed -i "s/SEMESTERVAR/$SEMESTER/g" temp.tex
sed -i "s/COURSENUMVAR/$COURSE_NUM/g" temp.tex

mv temp.tex $1.tex
sed -i "s/temp/$1/g" Makefile
