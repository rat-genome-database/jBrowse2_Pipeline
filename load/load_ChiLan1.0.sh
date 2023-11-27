#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading ChiLan1.0 (Chinchilla) ****"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="ChiLan1.0";
ROOTDIR="/data/data/jbrowse2/gff3/Chinchilla/ChiLan1.0"

../makeFasta.sh $ASSEMBLY "ChiLan1.0 (Chinchilla)"

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

