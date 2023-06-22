#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading chlSab2 (Green Monkey)*****"
echo "*****************************************************"
echo ""

ASSEMBLY="chlSab2";
ROOTDIR="/data/data/gff3/jbrowse2/Vervet/chlSab2"

../makeFasta.sh $ASSEMBLY "chlSab2 (Green Monkey/Vervet)" mfa

../loadGFF.sh $ROOTDIR $ASSEMBLY "Genomic Objects"
../loadGFF.sh $ROOTDIR/pipelineOutput $ASSEMBLY genes
../loadGFF.sh $ROOTDIR/pipelineOutput/ontology $ASSEMBLY "Disease Tracks"

