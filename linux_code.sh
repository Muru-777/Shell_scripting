#! /bin/sh

user=(us1 us2 us3 us4 us5 us6 us7 us8 us9 us10)

for i in ${user[@]}
do
  echo $i
  #useradd -m -p test $i
done
