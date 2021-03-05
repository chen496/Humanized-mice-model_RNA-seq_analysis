# Humanized-mice-model_RNA-seq_analysis



Overview:
----------
RNA-seq data, we need to first align reads to the mouse genome and then align the remaining reads to the human genome, because these data are also from the humanized mice. Then do gene ontology enrichment analysis and use IGV to check expression profiling of coding and non-coding RNAs, SNP and copy number profiling, and functional assays.

![alt text](https://github.com/chen496/Humanized-mice-model_RNA-seq_analysis/blob/71bce98ac3f27b1f6102e911d936a4387ed656fb/4.%20Integrative%20Genomics%20Viewer_%20IGV/IGV%20%20human/9-12/EEF2.png
)

Background:
----------
Initial stages of HIV pathogenesis are now strongly believed to be reliant on microbial translocation from the gut which drives the systemic inflammation needed for HIV/SIV.

Hypothesis : EcoHIV, a modified HIV which can infect mouse cells, would recapitulate early consequences of HIV-1 at the systemic level, such as bacterial translocation, and inquired whether combination of infection with opiates would worsen these symptoms.

Humanized mice model:
----------
Most infectious models have focused on “humanizing” the mice either by creating transgenic mice with human HIV co-receptors or generating chimeric mice with human immune cell grafts. 

Goal: 
----------
Explore the  bacterial translocation in tissues after EcoHIV-infection, and characterize the humanized mice model

The pipeline has 4 steps:

1. RNA-seq alignment-Bowtie2
2. Analyzed differentially expressed genes-DESeq2  
3. Performed gene ontology enrichment analysis-Gorilla
4. View information in bam files-Integrative Genomics Viewer (IGV)

Software:
----------
1. Bowtie2 -RNA-seq alignment
2. DESeq2  - Differential expressed genes analysis
3. Gorilla-  Gene ontology enrichment analysis
4. IGV-  Integrative Genomics Viewer

Reference:
----------

[1] Sindberg, Gregory M., et al. "An infectious murine model for studying the systemic effects of opioids on early HIV pathogenesis in the gut." Journal of Neuroimmune Pharmacology 10.1 (2015): 74-87.


[2] Langmead, Ben, and Steven L. Salzberg. "Fast gapped-read alignment with Bowtie 2." Nature methods 9.4 (2012): 357.

[3] Love, Michael I., Wolfgang Huber, and Simon Anders. "Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2." Genome biology 15.12 (2014): 1-21.

[4] Love, Michael I., et al. "RNA-Seq workflow: gene-level exploratory analysis and differential expression." F1000Research 4 (2015).

[5] Eden, Eran, et al. "GOrilla: a tool for discovery and visualization of enriched GO terms in ranked gene lists." BMC bioinformatics 10.1 (2009): 1-7.

[6] Thorvaldsdóttir, Helga, James T. Robinson, and Jill P. Mesirov. "Integrative Genomics Viewer (IGV): high-performance genomics data visualization and exploration." Briefings in bioinformatics 14.2 (2013): 178-192.
