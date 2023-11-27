#!/bin/bash

source /etc/profile

#$1 - assembly  $2 Species

#set -o xtrace

ASSEMBLY="$1";
ROOTDIR="/data/data/jbrowse2/gff3_variants/$2/${ASSEMBLY}"


echo ""
echo "*****************************************************"
echo "***************** Loading $ASSEMBLY variants*********"
echo "*****************************************************"
echo ""

#cnt=1;

cd /home/rgdpub/jbrowse2/load

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
 #   if [ $cnt -lt 3 ]
  #  then

     ../loadGFF.sh "$dir" $ASSEMBLY "$base"
   #  cnt=$((cnt + 1))
    # fi
fi
done


