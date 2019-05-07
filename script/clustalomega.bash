#!/bin/bash

#this script runs clustal omega 1.2.2 sequence alignment
#-t=sequence type
#-i=input file path
#-o=outfile file

../../Programs/clustalo-1.2.4-Ubuntu-x86_64 -t DNA -i ~/biol-6298-sheikhsofia/data/concatenated-sequences/*.fasta -o *.fasta

