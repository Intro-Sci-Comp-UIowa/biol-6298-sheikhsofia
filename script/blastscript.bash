#!/bin/bash


#db=$1
#in=$2
#out=$3



# for file in ../data/B-mori-HGT-sequences/mRNA-sequences/*.fasta
for file in ../data/B-mori-HGT-sequences/mRNA-sequences/bmori_Chi_DC438817.1.fasta
do
	../../Programs/ncbi-blast-2.9.0+/bin/blastx -query $file -db ./data/B-mori-HGT-sequences/protein-sequences -out ./$file.out  #$out
done
