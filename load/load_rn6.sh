#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading RN6   *********************"
echo "*****************************************************"
echo ""

ASSEMBLY="rn6";
ROOTDIR="/data/data/gff3/jbrowse2/Rat/rn6"

../makeFasta.sh $ASSEMBLY "Rnor_6.0 (Rat)" fa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


