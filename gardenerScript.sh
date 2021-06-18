#!/bin/bash --login

# step 1.. latest repository
git pull

# step 2.. create random number
date=$(date "+%Y-%m-%d")
random_number=`shuf -i 1-3 -n 1`
index=0

# step 3.. work as a gardener
while [ $index -lt $random_number ]
do
  index=`expr $index + 1`
  echo "[$date] The ${index}st misstion of the gardener"

  GITPATH="/home/ubuntu/lawn-gardener-project"

  cd $GITPATH
  git add . 
  git commit -m "[$date] ${index}commit"
  git push
done

# step 4..end of gardener work
echo "[$date] complete the ${index} tasks and exit the gardener's work." >> ./gardenerLog.log
