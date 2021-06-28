#!/bin/bash

#step 1.. latest repository
git pull

#step 2.. create random number
date=$(date "+%Y-%m-%d")
random_number=`shuf -i 1-3 -n 1`
index=0

# step 3.. work as a gardener
while [ $index -lt $random_number ]
do
  index=`expr $index + 1`
 
  git add .
  git commit -m "[$date] ${index}commit"
  git push
done

#step 4.. end of gardener work
echo "[$date] complete the ${index} task and exit the gardener's work"

