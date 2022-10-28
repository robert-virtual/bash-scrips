#!/bin/bash

if [ -z $1 ]; then
  echo "must provide a target extension example: \"jpg\"" 
  exit 
fi

i=1

if [ -n $2 ]; then
  i=$2
fi

for file in *.$1 ; do
  mv $file "$i.$1"
  i=$((i+1))
done

echo $i


