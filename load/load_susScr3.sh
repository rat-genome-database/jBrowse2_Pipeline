#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** susScr3 (Pig) ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="susScr3";
ROOTDIR="/data/data/jbrowse2/gff3/Pig/susScr3"

../makeFasta.sh $ASSEMBLY "susScr3 (Pig)" mfa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


