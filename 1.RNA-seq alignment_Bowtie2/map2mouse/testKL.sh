
#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

path1=/nethome/cxw496/local/test/example1/results/51KL1
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL1.fna -S $path1/51KL1.sam
echo "sam1 done"
samtools view -bS $path1/51KL1.sam > $path1/51KL1.bam;
samtools view -bF 4 $path1/51KL1.bam > $path1/51KL1.F.bam;
samtools view $path1/51KL1.F.bam > $path1/51KL1.F.sam;
samtools view -bf 4 $path1/51KL1.bam > $path1/51KL1.f.bam;
samtools view $path1/51KL1.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path1/51KL1.f.fna
echo "51KL1 done"

path2=/nethome/cxw496/local/test/example1/results/51KL2
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL2.fna -S $path2/51KL2.sam
echo "sam2 done"
samtools view -bS $path2/51KL2.sam > $path2/51KL2.bam;
samtools view -bF 4 $path2/51KL2.bam > $path2/51KL2.F.bam;
samtools view $path2/51KL2.F.bam > $path2/51KL2.F.sam;
samtools view -bf 4 $path2/51KL2.bam > $path2/51KL2.f.bam;
samtools view $path2/51KL2.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path2/51KL2.f.fna
echo "51KL2 done"

path3=/nethome/cxw496/local/test/example1/results/51KL3
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL3.fna -S $path3/51KL3.sam
echo "sam3 done"
samtools view -bS $path3/51KL3.sam > $path3/51KL3.bam;
samtools view -bF 4 $path3/51KL3.bam > $path3/51KL3.F.bam;
samtools view $path3/51KL3.F.bam > $path3/51KL3.F.sam;
samtools view -bf 4 $path3/51KL3.bam > $path3/51KL3.f.bam;
samtools view $path3/51KL3.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path3/51KL3.f.fna
echo "51KL3 done"

path4=/nethome/cxw496/local/test/example1/results/51KL4
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL4.fna -S $path4/51KL4.sam
echo "sam4 done"
samtools view -bS $path4/51KL4.sam > $path4/51KL4.bam;
samtools view -bF 4 $path4/51KL4.bam > $path4/51KL4.F.bam;
samtools view $path4/51KL4.F.bam > $path4/51KL4.F.sam;
samtools view -bf 4 $path4/51KL4.bam > $path4/51KL4.f.bam;
samtools view $path4/51KL4.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path4/51KL4.f.fna
echo "51KL4 done"


path5=/nethome/cxw496/local/test/example1/results/51KL5
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL5.fna -S $path5/51KL5.sam
echo "sam5 done"
samtools view -bS $path5/51KL5.sam > $path5/51KL5.bam;
samtools view -bF 4 $path5/51KL5.bam > $path5/51KL5.F.bam;
samtools view $path5/51KL5.F.bam > $path5/51KL5.F.sam;
samtools view -bf 4 $path5/51KL5.bam > $path5/51KL5.f.bam;
samtools view $path5/51KL5.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path5/51KL5.f.fna
echo "51KL5 done"

path6=/nethome/cxw496/local/test/example1/results/51KL6
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL6.fna -S $path6/51KL6.sam
echo "sam6 done"
samtools view -bS $path6/51KL6.sam > $path6/51KL6.bam;
samtools view -bF 4 $path6/51KL6.bam > $path6/51KL6.F.bam;
samtools view $path6/51KL6.F.bam > $path6/51KL6.F.sam;
samtools view -bf 4 $path6/51KL6.bam > $path6/51KL6.f.bam;
samtools view $path6/51KL6.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path6/51KL6.f.fna
echo "51KL6 done"

path7=/nethome/cxw496/local/test/example1/results/51KL7
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL7.fna -S $path7/51KL7.sam
echo "sam7 done"
samtools view -bS $path7/51KL7.sam > $path7/51KL7.bam;
samtools view -bF 4 $path7/51KL7.bam > $path7/51KL7.F.bam;
samtools view $path7/51KL7.F.bam > $path7/51KL7.F.sam;
samtools view -bf 4 $path7/51KL7.bam > $path7/51KL7.f.bam;
samtools view $path7/51KL7.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path7/51KL7.f.fna
echo "51KL7 done"

path8=/nethome/cxw496/local/test/example1/results/51KL8
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51KL8.fna -S $path8/51KL8.sam
echo "sam8 done"
samtools view -bS $path8/51KL8.sam > $path8/51KL8.bam;
samtools view -bF 4 $path8/51KL8.bam > $path8/51KL8.F.bam;
samtools view $path8/51KL8.F.bam > $path8/51KL8.F.sam;
samtools view -bf 4 $path8/51KL8.bam > $path8/51KL8.f.bam;
samtools view $path8/51KL8.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path8/51KL8.f.fna
echo "51KL8 done"



