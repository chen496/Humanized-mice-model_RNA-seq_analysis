
#!/bin/bash

module load bowtie2/2.2.6
module load samtools/1.2
echo "module load success"
path=/nethome/cxw496/local/test/example1

path1=/nethome/cxw496/local/test/example1/results/51GHLH1
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLH1.fna -S $path1/51GHLH1.sam
echo "sam1 done"
samtools view -bS $path1/51GHLH1.sam > $path1/51GHLH1.bam;
samtools view -bF 4 $path1/51GHLH1.bam > $path1/51GHLH1.F.bam;
samtools view $path1/51GHLH1.F.bam > $path1/51GHLH1.F.sam;
samtools view -bf 4 $path1/51GHLH1.bam > $path1/51GHLH1.f.bam;
samtools view $path1/51GHLH1.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path1/51GHLH1.f.fna
echo "51GHLH1 done"

path2=/nethome/cxw496/local/test/example1/results/51GHLH2
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLH2.fna -S $path2/51GHLH2.sam
echo "sam2 done"
samtools view -bS $path2/51GHLH2.sam > $path2/51GHLH2.bam;
samtools view -bF 4 $path2/51GHLH2.bam > $path2/51GHLH2.F.bam;
samtools view $path2/51GHLH2.F.bam > $path2/51GHLH2.F.sam;
samtools view -bf 4 $path2/51GHLH2.bam > $path2/51GHLH2.f.bam;
samtools view $path2/51GHLH2.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path2/51GHLH2.f.fna
echo "51GHLH2 done"

path3=/nethome/cxw496/local/test/example1/results/51GHLH3
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLH3.fna -S $path3/51GHLH3.sam
echo "sam3 done"
samtools view -bS $path3/51GHLH3.sam > $path3/51GHLH3.bam;
samtools view -bF 4 $path3/51GHLH3.bam > $path3/51GHLH3.F.bam;
samtools view $path3/51GHLH3.F.bam > $path3/51GHLH3.F.sam;
samtools view -bf 4 $path3/51GHLH3.bam > $path3/51GHLH3.f.bam;
samtools view $path3/51GHLH3.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path3/51GHLH3.f.fna
echo "51GHLH3 done"

path4=/nethome/cxw496/local/test/example1/results/51GHLH4
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLH4.fna -S $path4/51GHLH4.sam
echo "sam4 done"
samtools view -bS $path4/51GHLH4.sam > $path4/51GHLH4.bam;
samtools view -bF 4 $path4/51GHLH4.bam > $path4/51GHLH4.F.bam;
samtools view $path4/51GHLH4.F.bam > $path4/51GHLH4.F.sam;
samtools view -bf 4 $path4/51GHLH4.bam > $path4/51GHLH4.f.bam;
samtools view $path4/51GHLH4.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path4/51GHLH4.f.fna
echo "51GHLH4 done"


path5=/nethome/cxw496/local/test/example1/results/51GHLH5
bowtie2 -f -p 32 -x $path/index/mm10 -U $path/reads/51GHLH5.fna -S $path5/51GHLH5.sam
echo "sam5 done"
samtools view -bS $path5/51GHLH5.sam > $path5/51GHLH5.bam;
samtools view -bF 4 $path5/51GHLH5.bam > $path5/51GHLH5.F.bam;
samtools view $path5/51GHLH5.F.bam > $path5/51GHLH5.F.sam;
samtools view -bf 4 $path5/51GHLH5.bam > $path5/51GHLH5.f.bam;
samtools view $path5/51GHLH5.f.bam | \awk '{OFS="\t"; print ">"$1"\n"$10}' - > $path5/51GHLH5.f.fna
echo "51GHLH5 done"







