#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

bowtie2 -f -p 32 -x /nethome/cxw496/local/test/example1/index/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -U /nethome/cxw496/local/test/example1/reads/51KL8.fna -S /nethome/cxw496/local/test/example1/results/51KL8/51KL8.sam


samtools view -bS 51KL8.sam > 51KL8.bam

samtools view -bF 4 51KL8.bam > 51KL8.F.bam

samtools view 51KL8.F.bam > 51KL8.F.sam

samtools view -bf 4 51KL8.bam > 51KL8.f.bam

samtools view 51KL8.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > 51KL8.f.fna















