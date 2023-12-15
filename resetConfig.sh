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
rm /data/jbrowse2/mRatBN7.2/* 2>null
rm /data/jbrowse2/Rnor_6.0/* 2>null
rm /data/jbrowse2/Rnor_5.0/* 2>null
rm /data/jbrowse2/RGSC_v3.4/* 2>null
rm /data/jbrowse2/GRCh38.p14/* 2>null
rm /data/jbrowse2/GRCh37.p13/* 2>null
rm /data/jbrowse2/NCBI36/* 2>null
rm /data/jbrowse2/GRCm39/* 2>null
rm /data/jbrowse2/GRCm38.p6/* 2>null
rm /data/jbrowse2/MGSCv37/* 2>null
rm /data/jbrowse2/CanFam3.1/* 2>null
rm /data/jbrowse2/Sscrofa11.1/* 2>null
rm /data/jbrowse2/Sscrofa10.2/* 2>null
rm /data/jbrowse2/Chlorocebus_sabeus1.1/* 2>null
rm /data/jbrowse2/ChiLan1.0/* 2>null
rm /data/jbrowse2/SpeTri2.0/* 2>null
rm /data/jbrowse2/Vero_WHO_p1.0/* 2>null
rm /data/jbrowse2/Mhudiblu_PPA_v0/* 2>null
rm /data/jbrowse2/panpan1.1/* 2>null
rm /data/jbrowse2/HetGla_female_1.0/* 2>null
rm /data/jbrowse2/UTH_Rnor_SHR_Utx/* 2>null 
rm /data/jbrowse2/UTH_Rnor_SHRSP_BbbUtx_1.0/* 2>null 
rm /data/jbrowse2/UTH_Rnor_WKY_Bbb_1.0/* 2>null 





