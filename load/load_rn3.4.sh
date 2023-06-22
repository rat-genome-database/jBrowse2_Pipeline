#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading RGSC_v3.4******************"
echo "*****************************************************"
echo ""

ASSEMBLY="rn3.4";
ROOTDIR="/data/data/gff3/Rat/rn3_4"

../makeFasta.sh $ASSEMBLY "RGSC_v3.4 (Rat)" fa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done


