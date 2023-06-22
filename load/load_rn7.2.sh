#!/bin/bash

#set -o xtrace

ASSEMBLY="rn7.2";
ROOTDIR="/data/data/gff3/jbrowse2/Rat/rn7"

echo ""
echo "*****************************************************"
echo "***************** Loading $ASSEMBLY******************"
echo "*****************************************************"
echo ""

../makeFasta.sh $ASSEMBLY "mRatBN7.2 (Rat)" fna

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done

