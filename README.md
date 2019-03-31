# COSMOS Seminar Spring 2019 Figure Reproduction 

The goal of this project is to reproduce a figure analysis from existing data using computational and bioinformatics tools. 

## Reference 

Figure 6 from Sun, B. F., Xiao, J. H., He, S. M., Liu, L., Murphy, R. W., & Huang, D. W. (2012). Multiple ancient horizontal gene transfers and duplications in lepidopteran species. Insect Molecular Biology, 22(1), 72–87. doi:10.1111/imb.12004

## Introduction

Horizontally transferred genes (HGT) have been shown to be critical for broad life history outcomes. Sun *et al.* conducted a multifaceted bioinformatics-based investigation of HGT in the insect order Lepidoptera. Specifically, they used 3 existing high quality assembles (with assembly quality assessment conducted within this study) to examine the possibilities of HGT in this order, phylogenetic history in the context of these genes, independent post-transfer duplications and losses that may have occurred, and the potential biological function impacted from the set of horizontally transferred genes they confirmed or discovered in *B. mori*, *D. plexippus*, and *H. melopmene* based on existing data and expression patterns from microarray data. Their last line of analysis involved 2 tests to determine if these genes specifically evolve to adapt to the background genome of the insect. Testing this idea involved quantifying selection pressure via molecular evolutionary change rate in HGT sequences found in the recipient vs. donor (figure 6). 

Figure 6A shows horizontally transferred genes in *B. mori* on the x-axis and change metrics (Ks in black squares and Ka in red circles) and their ratio Ka/Ks (blue triangles) on y-axis. Figure 6B shows the log ratio of Ka/Ks in genes sequences from *B. mori* and Ka/Ks in donor/donor relative species to evaluate the comparative rates of evolution in each of the respective genomes.

## Figure 

[![Figure 6](https://wol-prod-cdn.literatumonline.com/cms/attachment/27970afc-96ef-4508-932d-2c96b18485f4/imb12004-fig-0006-m.jpg)](https://onlinelibrary.wiley.com/doi/full/10.1111/imb.12004)






































































































**Figure 6**. Selection pressure and evolutionary rates of horizontal gene transfers (HGTs) in Bombyx mori. (A) The selection values nonsynonymous (Ka), synonymous (Ks) and their ratio Ka/Ks for the HGTs between B. mori and the corresponding donor. (B) Comparison of molecular evolutionary rates between transferred and corresponding donor genes. Ka/Ks values of transferred genes vs. donor genes were divided by Ka/Ks values of donor genes vs. relative species of donor genes, and the distribution of the log ratios was plotted. Values less than 0 indicate that transferred genes had lower Ka/Ks values than the corresponding donor genes. Values greater than 0 indicate that transferred genes had higher Ka/Ks values than corresponding donor genes. Please see Table 1 for full gene names.

## Outline of Approaches

In order to reproduce the graphs in figure 6, the following steps will be taken: 
1. Verify HGTs identified and the donor source via BLAST searches
2. Collect sequence data for homologous pair of lepidopteran recipient and bacterial/fungal donor gene from RefSeq/NCBI
3. Use PAML 4 package in UNIX for selection analysis via ML substitution tests. 
- Within PAML 4, CODEML free-ratio and site-specific models will be used to identify positively selected sites.

## Caveats 

There are considerable gaps within the pipeline presented in the paper that complicate the possibility of reproducing the figure accurately. For example, sequence alignment program and codeml parameters are not specified. Additionally, the original gene ID's provided in referenced papers used by Sun *et al* are stored in a database that is inaccessible. 
