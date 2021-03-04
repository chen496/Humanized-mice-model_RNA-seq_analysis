#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

path1=/nethome/cxw496/local/test/example1/results/51GHLP1
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP1.fna -S $path1/51GHLP1.sam
echo "sam1 done"
samtools view -bS $path1/51GHLP1.sam > $path1/51GHLP1.bam;
samtools view -bF 4 $path1/51GHLP1.bam > $path1/51GHLP1.F.bam;
samtools view $path1/51GHLP1.F.bam > $path1/51GHLP1.F.sam;
samtools view -bf 4 $path1/51GHLP1.bam > $path1/51GHLP1.f.bam;
samtools view $path1/51GHLP1.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path1/51GHLP1.f.fna
echo "51GHLP1 done"

path2=/nethome/cxw496/local/test/example1/results/51GHLP2
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP2.fna -S $path2/51GHLP2.sam
echo "sam2 done"
samtools view -bS $path2/51GHLP2.sam > $path2/51GHLP2.bam;
samtools view -bF 4 $path2/51GHLP2.bam > $path2/51GHLP2.F.bam;
samtools view $path2/51GHLP2.F.bam > $path2/51GHLP2.F.sam;
samtools view -bf 4 $path2/51GHLP2.bam > $path2/51GHLP2.f.bam;
samtools view $path2/51GHLP2.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path2/51GHLP2.f.fna
echo "51GHLP2 done"

path3=/nethome/cxw496/local/test/example1/results/51GHLP3
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP3.fna -S $path3/51GHLP3.sam
echo "sam3 done"
samtools view -bS $path3/51GHLP3.sam > $path3/51GHLP3.bam;
samtools view -bF 4 $path3/51GHLP3.bam > $path3/51GHLP3.F.bam;
samtools view $path3/51GHLP3.F.bam > $path3/51GHLP3.F.sam;
samtools view -bf 4 $path3/51GHLP3.bam > $path3/51GHLP3.f.bam;
samtools view $path3/51GHLP3.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path3/51GHLP3.f.fna
echo "51GHLP3 done"

path4=/nethome/cxw496/local/test/example1/results/51GHLP4
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP4.fna -S $path4/51GHLP4.sam
echo "sam4 done"
samtools view -bS $path4/51GHLP4.sam > $path4/51GHLP4.bam;
samtools view -bF 4 $path4/51GHLP4.bam > $path4/51GHLP4.F.bam;
samtools view $path4/51GHLP4.F.bam > $path4/51GHLP4.F.sam;
samtools view -bf 4 $path4/51GHLP4.bam > $path4/51GHLP4.f.bam;
samtools view $path4/51GHLP4.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path4/51GHLP4.f.fna
echo "51GHLP4 done"

path5=/nethome/cxw496/local/test/example1/results/51GHLP5
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP5.fna -S $path5/51GHLP5.sam
echo "sam5 done"
samtools view -bS $path5/51GHLP5.sam > $path5/51GHLP5.bam;
samtools view -bF 4 $path5/51GHLP5.bam > $path5/51GHLP5.F.bam;
samtools view $path5/51GHLP5.F.bam > $path5/51GHLP5.F.sam;
samtools view -bf 4 $path5/51GHLP5.bam > $path5/51GHLP5.f.bam;
samtools view $path5/51GHLP5.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path5/51GHLP5.f.fna
echo "51GHLP5 done"

path6=/nethome/cxw496/local/test/example1/results/51GHLP6
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLP6.fna -S $path6/51GHLP6.sam
echo "sam6 done"
samtools view -bS $path6/51GHLP6.sam > $path6/51GHLP6.bam;
samtools view -bF 4 $path6/51GHLP6.bam > $path6/51GHLP6.F.bam;
samtools view $path6/51GHLP6.F.bam > $path6/51GHLP6.F.sam;
samtools view -bf 4 $path6/51GHLP6.bam > $path6/51GHLP6.f.bam;
samtools view $path6/51GHLP6.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path6/51GHLP6.f.fna
echo "51GHLP6 done"



