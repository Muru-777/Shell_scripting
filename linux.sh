#! /bin/sh

user = [1,2,3,4,5,6,7,8,9,10]

for i in $user
do 
  useradd -m -p test $i
done
