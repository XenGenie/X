#!/bin/bash
for x in $(ls -d */)
do
  echo "Nightly Push of $x"
  cd $x
  git pull origin master
  git add .
  git commit -a -m "$x Automated Nightly Push"
  git push origin +HEAD:refs/heads/master
  cd ..
done
