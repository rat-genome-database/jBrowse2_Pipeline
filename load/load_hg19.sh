#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading hg19 ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="hg19";
ROOTDIR="/data/data/gff3/Human/hg19"

../makeFasta.sh $ASSEMBLY "hg19 (Human)" fa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done

