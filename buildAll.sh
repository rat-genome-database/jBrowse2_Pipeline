#!/bin/bash

# $1 assembly

echo ""
echo "*****************************************************"
echo "***************** BUILD JBROWSE *********************"
echo "*****************************************************"
echo ""

rm ../logs/*

./resetConfig.sh 2>&1 | tee logs/resetConfig.log 
cd load
#RAT
./load_rn7.2.sh 2>&1 | tee ../logs/load_rn7.2.log 
#./load_rn6.sh 2>&1 | tee ../logs/load_rn6.log 
#./load_rn5.sh 2>&1 | tee ../logs/load_rn5.log     
#./load_rn3.4.sh 2>&1 | tee ../logs/load_rn3.4.log   
#Human
#./load_hg38.sh 2>&1 | tee ../logs/load_hg38.log 
#./load_hg19.sh 2>&1 | tee ../logs/load_hg19.log
#./load_hg18.sh 2>&1 | tee ../logs/load_hg18.log 
#Mouse
#./load_mm39.sh 2>&1 | tee ../logs/load_mm39.log    
#./load_mm38.sh 2>&1 | tee ../logs/load_mm38.log 
#./load_mm37.sh 2>&1 | tee ../logs/load_mm37.log 
#Dog
#./load_canFam3.sh 2>&1 | tee ../logs/load_canFam3.log 
#Pig
#./load_susScr11.sh 2>&1 | tee ../logs/load_susScr11.log 
#./load_susScr3.sh 2>&1 | tee ../logs/load_susScr3.log 
#Green Monkey
#./load_chlSab2.sh 2>&1 | tee ../logs/load_chlSab2.log 
#Bonobo
#./load_panPan2.sh 2>&1 | tee ../logs/load_panPan2.log 
#
#Other
#./load_hetGla2.sh  
#./load_rnUTH.sh         
#./load_veroWho.sh
#./load_ROS_Cfam_1.0.sh

