#!/bin/sh

set -o xtrace


mv "/data/data/jbrowse2/gff3_variants/Rat/rn7.2" "/data/data/jbrowse2/gff3_variants/Rat/mRatBN7.2"
mv "/data/data/jbrowse2/aliases/aliases_rn7.2.txt" "/data/data/jbrowse2/aliases/aliases_mRatBN7.2.txt"
mv "/data/data/jbrowse2/bigwig/Rat/rn7.2" "/data/data/jbrowse2/bigwig/Rat/mRatBN7.2"
mv "/data/data/jbrowse2/gff3/Rat/rn7.2" "/data/data/jbrowse2/gff3/Rat/mRatBN7.2"
mv "/data/data/jbrowse2/paf/rn7.2 to rn6 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to rn6 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to hg38 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to GRCh38.p14 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to rn3.4 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to RGSC_v3.4 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to UTH_Rnor_SHRSP_BbbUtx_1.0 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to UTH_Rnor_SHRSP_BbbUtx_1.0 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to UTH_Rnor_SHR_Utx Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to UTH_Rnor_SHR_Utx Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to susScr11 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to susScr11 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to mm39 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to GRCm39 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to canFam3 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to CanFam3.1 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to rn5 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to Rnor_5.0 Synteny.paf"
mv "/data/data/jbrowse2/paf/rn7.2 to UTH_Rnor_WKY_Bbb_1.0 Synteny.paf" "/data/data/jbrowse2/paf/mRatBN7.2 to UTH_Rnor_WKY_Bbb_1.0 Synteny.paf"
mv "/data/data/jbrowse2/bed/Rat/rn7.2" "/data/data/jbrowse2/bed/Rat/mRatBN7.2"

mv "/data/data/jbrowse2/gff3/Dog/canFam3" "/data/data/jbrowse2/gff3/Dog/CanFam3.1"

mv "/data/data/jbrowse2/aliases/aliases_hetGla2.txt" "/data/data/jbrowse2/aliases/aliases_HetGla_female_1.0.txt"
mv "/data/data/jbrowse2/gff3/Naked Mole-Rat/hetGla2" "/data/data/jbrowse2/gff3/Naked Mole-Rat/HetGla_female_1.0"

mv "/data/data/jbrowse2/gff3/Green Monkey/chlSab2" "/data/data/jbrowse2/gff3/Green Monkey/Chlorocebus_sabeus 1.1"

mv "/data/data/jbrowse2/aliases/aliases_hg18.txt" "/data/data/jbrowse2/aliases/aliases_NCBI36.txt"
mv "/data/data/jbrowse2/gff3/Human/hg18" "/data/data/jbrowse2/gff3/Human/NCBI36"

mv "/data/data/jbrowse2/aliases/aliases_hg19.txt" "/data/data/jbrowse2/aliases/aliases_GRCh37.p13.txt"
mv "/data/data/jbrowse2/gff3/Human/hg19" "/data/data/jbrowse2/gff3/Human/GRCh37.p13"

mv "/data/data/jbrowse2/aliases/aliases_hg38.txt" "/data/data/jbrowse2/aliases/aliases_GRCh38.p14.txt"
mv "/data/data/jbrowse2/bigwig/Human/hg38" "/data/data/jbrowse2/bigwig/Human/GRCh38.p14"
mv "/data/data/jbrowse2/gff3/Human/hg38" "/data/data/jbrowse2/gff3/Human/GRCh38.p14"
mv "/data/data/jbrowse2/paf/hg38 to mm39 Synteny.paf" "/data/data/jbrowse2/paf/GRCh38.p14 to GRCm39 Synteny.paf"

mv "/data/data/jbrowse2/aliases/aliases_mm37.txt" "/data/data/jbrowse2/aliases/aliases_MGSCv37.txt"
mv "/data/data/jbrowse2/gff3/Mouse/mm37" "/data/data/jbrowse2/gff3/Mouse/MGSCv37"

mv "/data/data/jbrowse2/aliases/aliases_mm38.txt" "/data/data/jbrowse2/aliases/aliases_GRCm38.p6.txt"
mv "/data/data/jbrowse2/gff3/Mouse/mm38" "/data/data/jbrowse2/gff3/Mouse/GRCm38.p6"

mv "/data/data/jbrowse2/aliases/aliases_mm39.txt" "/data/data/jbrowse2/aliases/aliases_GRCm39.txt"
mv "/data/data/jbrowse2/gff3/Mouse/mm39" "/data/data/jbrowse2/gff3/Mouse/GRCm39"

mv "/data/data/jbrowse2/aliases/aliases_panPan2.txt" "/data/data/jbrowse2/aliases/aliases_panpan1.1.txt"
mv "/data/data/jbrowse2/gff3/Bonobo/panPan2" "/data/data/jbrowse2/gff3/Bonobo/panpan1.1"

mv "/data/data/jbrowse2/gff3/Bonobo/panPan3" "/data/data/jbrowse2/gff3/Bonobo/Mhudiblu_PPA_v0"

mv "/data/data/jbrowse2/gff3_variants/Rat/rn3.4" "/data/data/jbrowse2/gff3_variants/Rat/RGSC_v3.4"
mv "/data/data/jbrowse2/aliases/aliases_rn3.4.txt" "/data/data/jbrowse2/aliases/aliases_RGSC_v3.4.txt"
mv "/data/data/jbrowse2/gff3/Rat/rn3.4" "/data/data/jbrowse2/gff3/Rat/RGSC_v3.4"

mv "/data/data/jbrowse2/gff3_variants/Rat/rn5" "/data/data/jbrowse2/gff3_variants/Rat/Rnor_5.0"
mv "/data/data/jbrowse2/aliases/aliases_rn5.txt" "/data/data/jbrowse2/aliases/aliases_Rnor_5.0.txt"
mv "/data/data/jbrowse2/gff3/Rat/rn5" "/data/data/jbrowse2/gff3/Rat/Rnor_5.0"

