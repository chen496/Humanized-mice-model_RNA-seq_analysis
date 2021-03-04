
#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

path1=/nethome/cxw496/local/test/example1/results/51GHLM1
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM1.fna -S $path1/51GHLM1.sam
echo "sam1 done"
samtools view -bS $path1/51GHLM1.sam > $path1/51GHLM1.bam;
samtools view -bF 4 $path1/51GHLM1.bam > $path1/51GHLM1.F.bam;
samtools view $path1/51GHLM1.F.bam > $path1/51GHLM1.F.sam;
samtools view -bf 4 $path1/51GHLM1.bam > $path1/51GHLM1.f.bam;
samtools view $path1/51GHLM1.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path1/51GHLM1.f.fna
echo "51GHLM1 done"

path2=/nethome/cxw496/local/test/example1/results/51GHLM2
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM2.fna -S $path2/51GHLM2.sam
echo "sam2 done"
samtools view -bS $path2/51GHLM2.sam > $path2/51GHLM2.bam;
samtools view -bF 4 $path2/51GHLM2.bam > $path2/51GHLM2.F.bam;
samtools view $path2/51GHLM2.F.bam > $path2/51GHLM2.F.sam;
samtools view -bf 4 $path2/51GHLM2.bam > $path2/51GHLM2.f.bam;
samtools view $path2/51GHLM2.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path2/51GHLM2.f.fna
echo "51GHLM2 done"

path3=/nethome/cxw496/local/test/example1/results/51GHLM3
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM3.fna -S $path3/51GHLM3.sam
echo "sam3 done"
samtools view -bS $path3/51GHLM3.sam > $path3/51GHLM3.bam;
samtools view -bF 4 $path3/51GHLM3.bam > $path3/51GHLM3.F.bam;
samtools view $path3/51GHLM3.F.bam > $path3/51GHLM3.F.sam;
samtools view -bf 4 $path3/51GHLM3.bam > $path3/51GHLM3.f.bam;
samtools view $path3/51GHLM3.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path3/51GHLM3.f.fna
echo "51GHLM3 done"

path4=/nethome/cxw496/local/test/example1/results/51GHLM4
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM4.fna -S $path4/51GHLM4.sam
echo "sam4 done"
samtools view -bS $path4/51GHLM4.sam > $path4/51GHLM4.bam;
samtools view -bF 4 $path4/51GHLM4.bam > $path4/51GHLM4.F.bam;
samtools view $path4/51GHLM4.F.bam > $path4/51GHLM4.F.sam;
samtools view -bf 4 $path4/51GHLM4.bam > $path4/51GHLM4.f.bam;
samtools view $path4/51GHLM4.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path4/51GHLM4.f.fna
echo "51GHLM4 done"


path5=/nethome/cxw496/local/test/example1/results/51GHLM5
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM5.fna -S $path5/51GHLM5.sam
echo "sam5 done"
samtools view -bS $path5/51GHLM5.sam > $path5/51GHLM5.bam;
samtools view -bF 4 $path5/51GHLM5.bam > $path5/51GHLM5.F.bam;
samtools view $path5/51GHLM5.F.bam > $path5/51GHLM5.F.sam;
samtools view -bf 4 $path5/51GHLM5.bam > $path5/51GHLM5.f.bam;
samtools view $path5/51GHLM5.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path5/51GHLM5.f.fna
echo "51GHLM5 done"

path6=/nethome/cxw496/local/test/example1/results/51GHLM6
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLM6.fna -S $path6/51GHLM6.sam
echo "sam6 done"
samtools view -bS $path6/51GHLM6.sam > $path6/51GHLM6.bam;
samtools view -bF 4 $path6/51GHLM6.bam > $path6/51GHLM6.F.bam;
samtools view $path6/51GHLM6.F.bam > $path6/51GHLM6.F.sam;
samtools view -bf 4 $path6/51GHLM6.bam > $path6/51GHLM6.f.bam;
samtools view $path6/51GHLM6.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path6/51GHLM6.f.fna
echo "51GHLM6 done"






