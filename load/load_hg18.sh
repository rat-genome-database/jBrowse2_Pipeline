#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading hg18  ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="hg18";
ROOTDIR="/data/data/gff3/jbrowse2/Human/hg18" fa

../makeFasta.sh $ASSEMBLY "hg18 (Human)"

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done

