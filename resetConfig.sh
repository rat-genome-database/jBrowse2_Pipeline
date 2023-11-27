#!/bin/bash

source /etc/profile

echo ""
echo "*********************************************************"
echo "** Deleting all files to create empty jbrowse instance **"
echo "*********************************************************"

echo "removing old logs"
rm -f /data/jbrowse_log/*

echo "reset config.json"
cp config.json.default /data/jbrowse2/config.json
#cp config.json.empty /data/jbrowse2/config.json

echo "updating aliases from /data/data/jbrowse2/aliases"
rm -rf /data/jbrowse2/aliases
cp -r /data/data/jbrowse2/aliases /data/jbrowse2

echo "removing all tracks"
rm /data/jbrowse2/*.gff.gz 2>null 
rm /data/jbrowse2/*.gz.tbi 2>null 
rm /data/jbrowse2/*.fa 2>null
rm /data/jbrowse2/*.fai 2>null
rm /data/jbrowse2/rn7.2/* 2>null
rm /data/jbrowse2/rn6/* 2>null
rm /data/jbrowse2/rn5/* 2>null
rm /data/jbrowse2/rn3.4/* 2>null 
rm /data/jbrowse2/hg38/* 2>null 
rm /data/jbrowse2/hg19/* 2>null 
rm /data/jbrowse2/hg18/* 2>null 
rm /data/jbrowse2/mm39/* 2>null 
rm /data/jbrowse2/mm38/* 2>null 
rm /data/jbrowse2/mm37/* 2>null 
rm /data/jbrowse2/canFam3/* 2>null 
rm /data/jbrowse2/susScr11/* 2>null 
rm /data/jbrowse2/susScr3/* 2>null 
rm /data/jbrowse2/chlSab2/* 2>null 
rm /data/jbrowse2/veroWho/* 2>null 
rm /data/jbrowse2/panPan3/* 2>null 
rm /data/jbrowse2/panPan2/* 2>null 
rm /data/jbrowse2/hetGla2/* 2>null 
rm /data/jbrowse2/UTH_Rnor_SHR_Utx/* 2>null 
rm /data/jbrowse2/UTH_Rnor_SHRSP_BbbUtx_1.0/* 2>null 
rm /data/jbrowse2/UTH_Rnor_WKY_Bbb_1.0/* 2>null 





