#!/bin/bash

echo ""
echo "*********************************************************"
echo "** Deleting all files to create empty jbrowse instance **"
echo "*********************************************************"


cp /data/jbrowse2/config.json.empty /data/jbrowse2/config.json
rm /data/jbrowse2/*.gff.gz
rm /data/jbrowse2/*.gz.tbi
rm /data/jbrowse2/*.fa
rm /data/jbrowse2/*.fai

