#!/bin/bash

i=$2
for file in *.$1 ; do
  mv $file "$i.$1"
  i=$((i+1))
done
echo $i


