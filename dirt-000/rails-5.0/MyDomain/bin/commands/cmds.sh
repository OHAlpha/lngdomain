#!/bin/bash

current=`cat cmdcur`
max=1

chmod +x bin/commands/*.sh

while [ $current -lt ${1-$max} ]
do
	bin/commands/cmd_`printf %03d $current`.sh
	let "current=current+1"
	echo -n $current > cmdcur
done
