#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading veroWho (Green Monkey)*****"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="veroWho";
ROOTDIR="/data/data/jbrowse2/gff3/Green Monkey/veroWho"

../makeFasta.sh $ASSEMBLY "veroWho (Green Monkey/Vervet)" 

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
