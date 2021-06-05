#!/bin/bash
function rename(){
declare -i x y m z=56

file /home/c/a/四级操作系统/* | cut -d ":" -f1 > rename1

awk '{printf "mv" FS $1 FS "\n"}' rename1 > rename2

for ((x=0;x<=5;x++))
do
	for ((y=0;y<=9;y++))
	do
		if ((10*$x+$y<$z));then
			echo "/home/c/a/四级操作系统/$x$y.mp4" >> new
		fi
	done
done
#combine and output
for ((m=1;m<=56;m++))
do
	echo `cat rename2 |sed -n "${m}p"``cat new | sed -n "${m}p"` >> final.sh
done
rm rename2 rename1 new
exit 0
}
rename
exit 0
