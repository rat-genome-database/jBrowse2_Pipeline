#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** susScr3 (Pig) ******************"
echo "*****************************************************"
echo ""

ASSEMBLY="susScr3";
ROOTDIR="/data/data/gff3/jbrowse2/Pig/pig10"

../makeFasta.sh $ASSEMBLY "susScr3 (Pig)" mfa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


