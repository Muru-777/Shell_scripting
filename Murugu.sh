#!/bin/bash

muru="strong"
version=6.1
if [ $muru ] && [ $version == 6.3 ]
then
  echo "success"
elif [ !$muru ] && [ $version != 6.3 ]
then 
  echo "failure"
else
  echo"nothing"
fi
