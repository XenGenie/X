#!/bin/bash
git submodule init
git submodule update

for x in $(ls -d */)
do 
	pattern='^.*[^/]'    #Regular expressions are "greedy", they'll match the longest substring they can from the 
	[[ $x =~ $pattern ]]   #Apply regex
	x=${BASH_REMATCH[0]}

	# printf "Remove  %s\n" $x
	# git rm -rf --cached $x
	# rm $x -r
	# printf "Adding submodule %s .git\n" $x

	# git submodule add -f https://github.com/SuperDomX/$x $x

	cd $x
	git submodule init
	git submodule update
	cd ..
 
done
