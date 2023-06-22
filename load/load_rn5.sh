#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading Rnor_5.0 ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="rn5";
ROOTDIR="/data/data/gff3/Rat/rn5"

../makeFasta.sh $ASSEMBLY "Rnor_5.0 (Rat)" fa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done


