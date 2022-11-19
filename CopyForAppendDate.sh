#!/bin/bash -x

for file in `ls *.log`
do

	folderName=`echo $file | awk -F. '{print $1}'`
	appendDate=$(date +%d_%m_%y)
	extName=`echo $file | awk -F. '{print $2}'`
	newFile=$folderName.$appendDate.$extName
	echo $folderName
	if [ -d $folderName ]
	then
		rm -r $folderName
	fi
	mkdir $folderName
	cp $file $folderName/$newFile
	echo $folderName/$newFile
done
