#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** susScr11 (Pig) ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="susScr11";
ROOTDIR="/data/data/gff3/jbrowse2/Pig/pig11"

../makeFasta.sh $ASSEMBLY "susScr11 (Pig)" mfa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

