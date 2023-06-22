#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** susScr11 (Pig) ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="susScr11";
ROOTDIR="/data/data/gff3/Pig/pig11"

../makeFasta.sh $ASSEMBLY "susScr11 (Pig)" mfa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done


