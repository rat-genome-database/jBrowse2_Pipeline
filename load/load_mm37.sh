#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading Mouse 37 ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="mm37";
ROOTDIR="/data/data/gff3/Mouse/mm37"

../makeFasta.sh $ASSEMBLY "GRCm37 (Mouse)" fa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done


