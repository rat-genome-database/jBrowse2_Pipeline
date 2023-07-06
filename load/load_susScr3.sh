#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** susScr3 (Pig) ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="susScr3";
ROOTDIR="/data/data/gff3/jbrowse2/Pig/susScr3"

../makeFasta.sh $ASSEMBLY "susScr3 (Pig)" mfa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


