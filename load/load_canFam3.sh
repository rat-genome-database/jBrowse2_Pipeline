#!/bin/bash

ASSEMBLY="canFam3";
ROOTDIR="/data/data/gff3/jbrowse2/Dog/dog31"

cd /home/rgdpub/jbrowse2/load

echo ""
echo "*****************************************************"
echo "***************** $ASSEMBLY *************************"
echo "*****************************************************"
echo ""

../makeFasta.sh $ASSEMBLY "canFam3.1 (Domestic Dog)" mfa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done