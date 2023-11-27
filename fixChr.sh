#!/bin/bash

source /etc/profile

sed -i 's/chr/Chr/g' <file>

for f in "$1"/*.narrowPeak
do
if [ -f "$f" ]; then
  sed -i 's/old/new/g' $f 
fi
done



