#!/bin/bash

#this script will run Gblocks 0.91b to create a gap free alignment for each clustal alignment
#following the path to the program, full path to the clustal alignment should be specified
#-t=sequence type; for selection analysis codon should be selected
#-b=gaps, y to allow, n to not allow

../../Programs/Gblocks_0.91b/Gblocks ~/biol-6298-sheikhsofia/output/clustal-alignment/*.fasta -t=c -b5=n 

