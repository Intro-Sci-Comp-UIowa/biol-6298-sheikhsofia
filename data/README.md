## Data Collection

The *B. mori* sequences were collected from NCBI using accession numbers from the supplementary data of Sun *et al*, 2012. Donor sequences were collected from NCBI using accession numbers provided in Zhu *et al*, 2011. 

### Related-species sequence 

CDS for each gene were also collected from recipient-related and donor-related species for phylogenetic analysis. These related species were sampled from gene trees provided by Sun *et al* in the supplementary data, and sequences were acquired by using the donor sequence as the query in a BLAST search that was restricted to species chosen from the trees. Sequences from recipient-related species H. melopmene were collected from Ensembl Metazoa using accession numbers provided in the Sun et al paper, in order to increase phylogenetic representation. All sequences are concatenated using the cat function in command line. 

Accession numbers for all sequences used in the reproduced figure are available in the second sheet of the excel file in this folder. 

### B.mori sequence validation
The B. mori HGT sequences are verified as potential HGTs unique to B. mori by using BLAST to determine homology with other insects, and eukaryotes generally. To test this, first pre-set BLAST parameters are used to do an a BLAST search with the *b. mori* nucelotide sequence that is unrestricted to any organism within the nr/nt database. Then word size and E value parameters are relaxed in order to exclude the possibility of rapidly diverging eukaryotic genes. This is done by reducing the word size to 20 nucelotides, and increasing the E value threshold to 20. List of hits are evaluated to see if any matches returned reflect actual genes, or only map partially to other areas of non-bmori genomes. Under HGT hypothesis, the expectation is to see few or no hits outside of *B. mori*.An example of this is available in the data directory. 

Note: the original paper uses e-value cut-off of 10^-10 and a continuous overlap threshold of 33% (i.e. there is a continuous segment of overlap between the query and hit sequences that stretches at least 33%). These criterion are used to detect for the presence of similar genes in invertebrates. 

### Donor sequence validation
Donor genes are verified as present in the recipient, *B. mori*, by using donor protein sequences to BLAST against the *B. mori* genome using the non-redundant protein sequences database.

### Sequence corrections

The original B. mori reference numbers in the Sun *et al.* paper are specific to a database that is inaccessible. The GenBank accession numbers provided are incomplete mRNA sequences, and thus do not reflect the full coding sequence of the gene, which is important for selection analysis. In order to overcome this issue, mRNA sequences from the Sun et al paper were used as BLAST query to find hits that consist of the full mRNA. Next, the accession number was submitted to ORFinder to find the largest open reading frame, and thus likely the full CDS.

Details about accession numbers and their source are included in excel file in this folder.


### Citations

Sun, B. F., Xiao, J. H., He, S. M., Liu, L., Murphy, R. W., & Huang, D. W. (2012). Multiple ancient horizontal gene transfers and duplications in lepidopteran species. Insect Molecular Biology, 22(1), 72–87. doi:10.1111/imb.12004

Zhu, B., Lou, M. M., Xie, G. L., Zhang, G. Q., Zhou, X. P., Li, B., & Jin, G. L. (2011). Horizontal gene transfer in silkworm, Bombyx mori. BMC genomics, 12, 248. doi:10.1186/1471-2164-12-248
