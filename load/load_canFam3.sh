#!/bin/bash

ASSEMBLY="canFam3";
ROOTDIR="/data/data/gff3/Dog/dog31"

echo ""
echo "*****************************************************"
echo "***************** $ASSEMBLY *************************"
echo "*****************************************************"
echo ""

../makeFasta.sh $ASSEMBLY "canFam3.1 (Domestic Dog)" mfa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done