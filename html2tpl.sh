#!/bin/bash 
for x in $(ls -d */)
do 

	cd $x/
	# cp ../html2tpl.sh ./html2tpl.sh
	# # read -p "Find What Extension? : " find
	# read -p "Rename it to what? : " replace

	find=html
	replace=tpl

	for f in *.$find; do 
		# read -p  "Move $f to ${f%%.$find}.$replace ?" answer
		# answer=n

		echo "Renaming $f ${f%%.$find}.$replace" 
		mv $f "${f%%.$find}.$replace"

		# case $answer in
		# 	[yY]* ) 
		# 		echo "Renaming $f ${f%%.$find}.$replace" 
	 #    		mv $f "${f%%.$find}.$replace"
		#    	break;;
		# 	[nN]* ) exit;;
		# 	# * )     echo "Dude, just enter Y or N, please.";;
		# esac
# 
	done

	# for d in $(ls -d */)
	# do 	
	# 	cp ../html2tpl.sh ./html2tpl.sh
	# 	echo "found directory $d"
	# 	./html2tpl.sh
	# done

	cd ../
done