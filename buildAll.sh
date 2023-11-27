#!/bin/bash

source /etc/profile

# $1 ROOT directory

echo ""
echo "*****************************************************"
echo "***************** BUILD JBROWSE *********************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2

rm -rf logs
mkdir logs

./resetConfig.sh 2>&1 | tee logs/resetConfig.log
cd load
#RAT
./load_rn7.2.sh 2>&1 | tee /data/jbrowse_log/load_rn7.2.log
./load_rn6.sh 2>&1 | tee /data/jbrowse_log/load_rn6.log
./load_rn5.sh 2>&1 | tee /data/jbrowse_log/load_rn5.log
./load_rn3.4.sh 2>&1 | tee /data/jbrowse_log/load_rn3.4.log
./load_UTH_Rnor_SHR_Utx.sh 2>&1 | tee /data/jbrowse_log/load_UTH_Rnor_SHR_Utx.log
./load_UTH_Rnor_SHRSP_BbbUtx_1.0.sh 2>&1 | tee /data/jbrowse_log/load_UTH_Rnor_SHRSP_BbbUtx_1.0.log
./load_UTH_Rnor_WKY_Bbb_1.0.sh 2>&1 | tee /data/jbrowse_log/load_UTH_Rnor_WKY_Bbb_1.0.log
#Human
./load_hg38.sh 2>&1 | tee /data/jbrowse_log/load_hg38.log
./load_hg19.sh 2>&1 | tee /data/jbrowse_log/load_hg19.log
./load_hg18.sh 2>&1 | tee /data/jbrowse_log/load_hg18.log
#Mouse
./load_mm39.sh 2>&1 | tee /data/jbrowse_log/load_mm39.log
./load_mm38.sh 2>&1 | tee /data/jbrowse_log/load_mm38.log
./load_mm37.sh 2>&1 | tee /data/jbrowse_log/load_mm37.log
#Dog
./load_canFam3.sh 2>&1 | tee /data/jbrowse_log/load_canFam3.log
#Pig
./load_susScr11.sh 2>&1 | tee /data/jbrowse_log/load_susScr11.log
./load_susScr3.sh 2>&1 | tee /data/jbrowse_log/load_susScr3.log
#Green Monkey
./load_chlSab2.sh 2>&1 | tee /data/jbrowse_log/load_chlSab2.log
./load_veroWho.sh 2>&1 | tee /data/jbrowse_log/load_veroWho.log
#Bonobo
./load_panPan3.sh 2>&1 | tee /data/jbrowse_log/load_panPan3.log
./load_panPan2.sh 2>&1 | tee /data/jbrowse_log/load_panPan2.log
#Naked Mole Rat
./load_hetGla2.sh 2>&1 | tee /data/jbrowse_log/load_hetGla2.log
#Chinchilla
./load_ChiLan1.0.sh 2>&1 | tee /data/jbrowse_log/load_ChiLan1.0.log
#Squirrel
./load_SpeTri2.0.sh 2>&1 | tee /data/jbrowse_log/load_SpeTri2.0.log


cd /home/rgdpub/jbrowse2

#load synteny tracks
./loadPaf.sh rn7.2 rn6 > /data/jbrowse_log/loadPaf_rn7.2-rn6.log
./loadPaf.sh rn7.2 rn5 > /data/jbrowse_log/loadPaf_rn7.2-rn5.log
./loadPaf.sh rn7.2 rn3.4 > /data/jbrowse_log/loadPaf_rn7.2-rn3.4.log
./loadPaf.sh rn7.2 hg38 > /data/jbrowse_log/loadPaf_rn7.2-hg38.log
./loadPaf.sh rn7.2 susScr11 > /data/jbrowse_log/loadPaf_rn7.2-susScr11.log
./loadPaf.sh rn7.2 mm39 > /data/jbrowse_log/loadPaf_rn7.2-mm39.log
./loadPaf.sh hg38 mm39 > /data/jbrowse_log/loadPaf_rn7.2-hg38.log
./loadPaf.sh rn7.2 canFam3 > /data/jbrowse_log/loadPaf_rn7.2-hg38.log
./loadPaf.sh rn7.2 UTH_Rnor_SHRSP_BbbUtx_1.0 > /data/jbrowse_log/loadPaf_rn7.2-UTH_Rnor_SHRSP_BbbUtx_1.0.log
./loadPaf.sh rn7.2 UTH_Rnor_SHR_Utx > /data/jbrowse_log/loadPaf_rn7.2-UTH_Rnor_SHR_Utx.log
./loadPaf.sh rn7.2 UTH_Rnor_WKY_Bbb_1.0 > /data/jbrowse_log/loadPaf_rn7.2-UTH_Rnor_WKY_Bbb_1.0.log

cd /home/rgdpub/jbrowse2/load
#RAT
../loadVariants.sh rn7.2 Rat 2>&1 | tee /data/jbrowse_log/load_rn7.2_variants.log
../loadVariants.sh rn6 Rat 2>&1 | tee /data/jbrowse_log/load_rn6_variants.log
../loadVariants.sh rn5 Rat 2>&1 | tee /data/jbrowse_log/load_rn5_variants.log
../loadVariants.sh rn3.4 Rat 2>&1 | tee /data/jbrowse_log/load_rn3.4_variants.log
../loadVariants.sh hg38 Human 2>&1 | tee /data/jbrowse_log/load_hg38_variants.log
../loadVariants.sh hg19 Human 2>&1 | tee /data/jbrowse_log/load_hg19_variants.log
../loadVariants.sh hg18 Human 2>&1 | tee /data/jbrowse_log/load_hg18_variants.log
../loadVariants.sh mm39 Mouse 2>&1 | tee /data/jbrowse_log/load_mm39_variants.log
../loadVariants.sh mm38 Mouse 2>&1 | tee /data/jbrowse_log/load_mm38_variants.log
../loadVariants.sh mm37 Mouse 2>&1 | tee /data/jbrowse_log/load_mm37_variants.log
