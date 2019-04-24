#!/bin/bash


#db=$1
#in=$2
#out=$3



for file in ./biol-6298-sheikhsofia/data/B.mori HGT sequences/mRNA sequences from paper accession numbers/*.fasta #$in
do
	../../ncbi-blast-2.9.0+/bin/blastx.exe -query $file -db ./data/B.mori HGT sequences/protein sequences \ #arguments
		-out ./$file.out  #$out
		
	done
