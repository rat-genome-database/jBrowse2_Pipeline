

ASSEMBLY="panPan3"
PREFIX="chr"
EXT="fna"

rm /ref/fasta/jbrowse/${ASSEMBLY}.fa
touch /ref/fasta/jbrowse/${ASSEMBLY}.fa
	cat "/ref/fasta/${ASSEMBLY}/${PREFIX}1.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"
	cat "/ref/fasta/${ASSEMBLY}/${PREFIX}2A.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"
	cat "/ref/fasta/${ASSEMBLY}/${PREFIX}2B.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"

for i in {3..22}; do
	cat "/ref/fasta/${ASSEMBLY}/${PREFIX}${i}.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"
done

cat "/ref/fasta/${ASSEMBLY}/${PREFIX}X.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"
#cat "/ref/fasta/${ASSEMBLY}/${PREFIX}Y.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"
cat "/ref/fasta/${ASSEMBLY}/${PREFIX}MT.${EXT}" >> "/ref/fasta/jbrowse/${ASSEMBLY}.fa"


