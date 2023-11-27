#!/bin/bash

source /etc/profile

ASSEMBLY="canFam3";
ROOTDIR="/data/data/jbrowse2/gff3/Dog/canFam3"

cd /home/rgdpub/jbrowse2/load

echo ""
echo "*****************************************************"
echo "***************** $ASSEMBLY *************************"
echo "*****************************************************"
echo ""

../makeFasta.sh $ASSEMBLY "canFam3.1 (Domestic Dog)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

echo "running indexing"
export NODE_OPTIONS='--max-old-space-size=4096'
jbrowse text-index  --assemblies=${ASSEMBLY} --out /data/jbrowse2/ 2>&1 | tee /data/jbrowse_log/textIndex${ASSEMBLY}.log
