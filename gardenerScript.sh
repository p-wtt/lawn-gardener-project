#!/bin/bash --login

# step 1.. latest repository
git pull origin main

# step 2.. create random number
date=$(date "+%Y-%m-%d")
random_number=`shuf -i 1-3 -n 1`
index=0

# step 3.. work as a gardener
while [ $index -lt $random_number ]
do
  index=`expr $index + 1`
  echo "[$date] The ${index}st misstion of the gardener" >> ./gardenerLog.txt

  GITPATH="/home/ubuntu/lawn-gardener-project"

  cd $GITPATH
  git add . 
  git commit -m "[$date] ${index}commit"
  git push origin master
done

# step 4..end of gardener work
echo "End of gardener work" >> ./gardenerLog.txt
