# Data Analysis 

PAML4 version 4.9 software will be used to conduct selection analysis. 

## PAML Installation 

The windows win32 program was downloaded from [Phylogenetic Analysis by Maximum Likelihood (PAML4)](http://abacus.gene.ucl.ac.uk/software/paml.html).

Archieve paml4.9i.tgz package containing executable files was also downloaded. It was extracted into the local PAML folder in the Programs directory. The following source code was used to compile the program:

```sh

$ cd Programs/PAML/paml4.9i
$ cd src
$ make -f Makefile
$ ls -lF
$ mv baseml basemlg codeml pamp evolver yn00 chi2 ..
$ cd ..

```

Executable files were renamed to incorporate version information (4.9). 

## Running Codeml

In order to conduct selection analysis, codeml free-ratio and site-specific models are used, which requires the following information:
1. a pairwise sequence alignment, with gaps removed to allow codeml to read sequences properly and limit false signals of selection
2. control file indicating run parameters

### Pairwise sequence alignments

Sequences are aligned using pre-set parameters of [PRANK](https://www.ebi.ac.uk/Tools/msa/prank/), and output is copied and pasted into input field of [Gblocks 0.91b](http://phylogeny.lirmm.fr/phylo_cgi/one_task.cgi?task_type=gblocks&tab_index=2) for a gap-free alignment. Pre-set parameters are used. The output is saved in PHY (phylip) format for execution in codeml. 

### Control file

The control file (.ctl) is used to indicate input and output files, and parameters used. Seqtype specifies the type of data- codon or amino acid. An example of a control is included under the control file folder. This ctrl file was used for sequence analysis of the Agp gene in recipient and donor.
 











