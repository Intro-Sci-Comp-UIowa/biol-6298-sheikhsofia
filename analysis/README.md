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
1. a multiple sequence alignment with gaps removed to allow codeml to read sequences properly and limit false signals -- Gblocks alignment used
2. phylogenetic tree in newick format to estimate omega based on branch length -- MrBayes tree used
3. control file indicating run parameters

Details on preparing MSA and bayesian tree are available in the output folder README file. 


### Control file

The control file (codeml.ctl) is used to indicate input and output files, and parameters used. An example of a control is included under the control file folder. This ctrl file was used for sequence analysis of the Agp gene in recipient and donor. 

For this analysis, the runmode was set to 0 to indicate the use of a tree, seqtype was set to 1 (codons), clock and aadist were left at 0. Importantly, model was set to 1 NSsites was set to 0 to allow variable omega values for each branch (i.e. branch-based free-ratios model).
 

## Codeml output

The codeml output files indicate the Ka, Ks, and Ka/Ks ratio for each branch on the tree, which corresponds to gene sequence from a species. The following variables are used for the figure:

S = Ks = number of synonymous sites  
N = Ka = number of non-synouymous sites   
dS = Ks = synonymous substitution rate   
dN = Ks = non-synonymous substitution rate   
dN/dS = ratio of non-synonymous to synonymous changes   

The output file contains a newick tree with Ka, Ks, or the ratio mapped onto the tips which can be loaded in a treeviewer for an alternative visualization mode. 

## Figure data points

The Ka, Ks, and Ka/Ks ratio values for each HGT in *B. mori* were used in MS Excel 2013 to generate panel A. For panel B, the omega (Ka/Ks) value for each specific HGT in *B. mori* was divided by the omega of its respective donor, divided by the ratio of omega for the donor to donor-related species. This was done by first taking the average omega of donor-related species. The total ratio was log normalized and plotted as a bar graph.










