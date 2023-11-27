#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading UTH_Rnor_SHRSP_BbbUtx_1.0 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="UTH_Rnor_SHRSP_BbbUtx_1.0";
ROOTDIR="/data/data/jbrowse2/gff3/Rat/UTH_Rnor_SHRSP_BbbUtx_1.0"

../makeFasta.sh $ASSEMBLY "UTH_Rnor_SHRSP_BbbUtx_1.0 (Rat)" 

cd /home/rgdpub/jbrowse2/load

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

echo "running indexing"
jbrowse text-index  --assemblies=${ASSEMBLY} --out /data/jbrowse2/ 2>&1 | tee /data/jbrowse_log/textIndex${ASSEMBLY}.log
