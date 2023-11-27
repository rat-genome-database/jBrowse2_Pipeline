#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading SpeTri2.0 (Squirrel) ****"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="SpeTri2.0";
ROOTDIR="/data/data/jbrowse2/gff3/Squirrel/SpeTri2.0"

../makeFasta.sh $ASSEMBLY "SpeTri2.0 (Squirrel)"

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

