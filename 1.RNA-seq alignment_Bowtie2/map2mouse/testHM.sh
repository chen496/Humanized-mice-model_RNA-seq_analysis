#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

path1=/nethome/cxw496/local/test/example1/results/51GHLHM1
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM1.fna -S $path1/51GHLHM1.sam
echo "sam1 done"
samtools view -bS $path1/51GHLHM1.sam > $path1/51GHLHM1.bam;
samtools view -bF 4 $path1/51GHLHM1.bam > $path1/51GHLHM1.F.bam;
samtools view $path1/51GHLHM1.F.bam > $path1/51GHLHM1.F.sam;
samtools view -bf 4 $path1/51GHLHM1.bam > $path1/51GHLHM1.f.bam;
samtools view $path1/51GHLHM1.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path1/51GHLHM1.f.fna
echo "51GHLHM1 done"

path2=/nethome/cxw496/local/test/example1/results/51GHLHM2
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM2.fna -S $path2/51GHLHM2.sam
echo "sam2 done"
samtools view -bS $path2/51GHLHM2.sam > $path2/51GHLHM2.bam;
samtools view -bF 4 $path2/51GHLHM2.bam > $path2/51GHLHM2.F.bam;
samtools view $path2/51GHLHM2.F.bam > $path2/51GHLHM2.F.sam;
samtools view -bf 4 $path2/51GHLHM2.bam > $path2/51GHLHM2.f.bam;
samtools view $path2/51GHLHM2.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path2/51GHLHM2.f.fna
echo "51GHLHM2 done"

path3=/nethome/cxw496/local/test/example1/results/51GHLHM3
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM3.fna -S $path3/51GHLHM3.sam
echo "sam3 done"
samtools view -bS $path3/51GHLHM3.sam > $path3/51GHLHM3.bam;
samtools view -bF 4 $path3/51GHLHM3.bam > $path3/51GHLHM3.F.bam;
samtools view $path3/51GHLHM3.F.bam > $path3/51GHLHM3.F.sam;
samtools view -bf 4 $path3/51GHLHM3.bam > $path3/51GHLHM3.f.bam;
samtools view $path3/51GHLHM3.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path3/51GHLHM3.f.fna
echo "51GHLHM3 done"

path4=/nethome/cxw496/local/test/example1/results/51GHLHM4
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM4.fna -S $path4/51GHLHM4.sam
echo "sam4 done"
samtools view -bS $path4/51GHLHM4.sam > $path4/51GHLHM4.bam;
samtools view -bF 4 $path4/51GHLHM4.bam > $path4/51GHLHM4.F.bam;
samtools view $path4/51GHLHM4.F.bam > $path4/51GHLHM4.F.sam;
samtools view -bf 4 $path4/51GHLHM4.bam > $path4/51GHLHM4.f.bam;
samtools view $path4/51GHLHM4.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path4/51GHLHM4.f.fna
echo "51GHLHM4 done"

path5=/nethome/cxw496/local/test/example1/results/51GHLHM5
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM5.fna -S $path5/51GHLHM5.sam
echo "sam5 done"
samtools view -bS $path5/51GHLHM5.sam > $path5/51GHLHM5.bam;
samtools view -bF 4 $path5/51GHLHM5.bam > $path5/51GHLHM5.F.bam;
samtools view $path5/51GHLHM5.F.bam > $path5/51GHLHM5.F.sam;
samtools view -bf 4 $path5/51GHLHM5.bam > $path5/51GHLHM5.f.bam;
samtools view $path5/51GHLHM5.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path5/51GHLHM5.f.fna
echo "51GHLHM5 done"

path6=/nethome/cxw496/local/test/example1/results/51GHLHM6
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM6.fna -S $path6/51GHLHM6.sam
echo "sam6 done"
samtools view -bS $path6/51GHLHM6.sam > $path6/51GHLHM6.bam;
samtools view -bF 4 $path6/51GHLHM6.bam > $path6/51GHLHM6.F.bam;
samtools view $path6/51GHLHM6.F.bam > $path6/51GHLHM6.F.sam;
samtools view -bf 4 $path6/51GHLHM6.bam > $path6/51GHLHM6.f.bam;
samtools view $path6/51GHLHM6.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path6/51GHLHM6.f.fna
echo "51GHLHM6 done"

path7=/nethome/cxw496/local/test/example1/results/51GHLHM7
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLHM7.fna -S $path7/51GHLHM7.sam
echo "sam7 done"
samtools view -bS $path7/51GHLHM7.sam > $path7/51GHLHM7.bam;
samtools view -bF 4 $path7/51GHLHM7.bam > $path7/51GHLHM7.F.bam;
samtools view $path7/51GHLHM7.F.bam > $path7/51GHLHM7.F.sam;
samtools view -bf 4 $path7/51GHLHM7.bam > $path7/51GHLHM7.f.bam;
samtools view $path7/51GHLHM7.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path7/51GHLHM7.f.fna
echo "51GHLHM7 done"
















