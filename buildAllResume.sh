#!/bin/bash

source /etc/profile

# $1 ROOT directory

echo ""
echo "*****************************************************"
echo "***************** BUILD JBROWSE *********************"
echo "*****************************************************"
echo ""

./load_Sscrofa10.2.sh 2>&1 | tee /data/jbrowse_log/load_Sscrofa10.2.log
#Green Monkey
./"load_Chlorocebus_sabeus1.1.sh" 2>&1 | tee "/data/jbrowse_log/load_Chlorocebus_sabeus1.1.log"
./load_Vero_WHO_p1.0.sh 2>&1 | tee /data/jbrowse_log/load_Vero_WHO_p1.0.log
#Bonobo
./load_Mhudiblu_PPA_v0.sh 2>&1 | tee /data/jbrowse_log/load_Mhudiblu_PPA_v0.log
./load_panpan1.1.sh 2>&1 | tee /data/jbrowse_log/load_panpan1.1.log
#Naked Mole Rat
./load_HetGla_female_1.0.sh 2>&1 | tee /data/jbrowse_log/load_HetGla_female_1.0.log
#Chinchilla
./load_ChiLan1.0.sh 2>&1 | tee /data/jbrowse_log/load_ChiLan1.0.log
#Squirrel
./load_SpeTri2.0.sh 2>&1 | tee /data/jbrowse_log/load_SpeTri2.0.log

cd /home/rgdpub/jbrowse2

#load orthology tracks
./loadOrthology.sh 

#load synteny
./loadPaf.sh

cd /home/rgdpub/jbrowse2/load
#RAT
../loadVariants.sh mRatBN7.2 Rat 2>&1 | tee /data/jbrowse_log/load_mRatBN7.2_variants.log
../loadVariants.sh Rnor_6.0 Rat 2>&1 | tee /data/jbrowse_log/load_Rnor_6.0_variants.log
../loadVariants.sh Rnor_5.0 Rat 2>&1 | tee /data/jbrowse_log/load_Rnor_5.0_variants.log
../loadVariants.sh RGSC_v3.4 Rat 2>&1 | tee /data/jbrowse_log/load_RGSC_v3.4_variants.log
../loadVariants.sh GRCh38.p14 Human 2>&1 | tee /data/jbrowse_log/load_GRCh38.p14_variants.log
../loadVariants.sh GRCh37.p13 Human 2>&1 | tee /data/jbrowse_log/load_GRCh37.p13_variants.log
../loadVariants.sh NCBI36 Human 2>&1 | tee /data/jbrowse_log/load_NCBI36_variants.log
../loadVariants.sh GRCm39 Mouse 2>&1 | tee /data/jbrowse_log/load_GRCm39_variants.log
../loadVariants.sh GRCm38.p6 Mouse 2>&1 | tee /data/jbrowse_log/load_GRCm38_variants.log
../loadVariants.sh MGSCv37 Mouse 2>&1 | tee /data/jbrowse_log/load_MGSCv37_variants.log
