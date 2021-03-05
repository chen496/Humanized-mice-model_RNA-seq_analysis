library("openxlsx")
library("Rsamtools")
library("GenomicFeatures")
library("GenomicAlignments")
library("BiocParallel")
library("DESeq2")
library("stringr")

dir<-"/scratch/tmp/cxwRNA/DESeq2/dir"
list.files(dir)
csvfile <- file.path(dir,"samples.xlsx")
sampleTable<-read.xlsx(csvfile,sheet=1)
filenames <- file.path(dir, paste0(sampleTable$Run, ".sort.bam"))
file.exists(filenames)
bamfiles<-BamFileList(filenames,yieldSize = 2000000000)
seqinfo(bamfiles[1])
gtffile1<- file.path(dir,"human.gtf")
txdb1 <- makeTxDbFromGFF(gtffile1, format="gtf", circ_seqs=character())
ebg1 <- exonsBy(txdb1, by="gene")
snowparam <- SnowParam(workers =60, type = "SOCK")
register(snowparam, default = TRUE)
registered()

se1 <- summarizeOverlaps(features=ebg1, reads=bamfiles,
                        mode="Union",
                        singleEnd=FALSE,
                        ignore.strand=TRUE,
                        fragments=TRUE )

colData(se1) <- DataFrame(sampleTable)
se1$Mouse<-factor(se1$Mouse)
se1$Treatment<-factor(se1$Treatment)
se1$Treatment <- relevel(se1$Treatment, "Placebo")
dimnames(se1)[[1]]<-paste0("h>",dimnames(se1)[[1]])

gtffile2 <- file.path(dir,"mouse.gtf")
txdb2 <- makeTxDbFromGFF(gtffile2, format="gtf", circ_seqs=character())
ebg2 <- exonsBy(txdb2, by="gene")
se2 <- summarizeOverlaps(features=ebg2, reads=bamfiles,
                         mode="Union",
                         singleEnd=FALSE,
                         ignore.strand=TRUE,
                         fragments=TRUE )

colData(se2) <- DataFrame(sampleTable)
se2$Mouse<-factor(se2$Mouse)
se2$Treatment<-factor(se2$Treatment)
se2$Treatment <- relevel(se2$Treatment, "Placebo")
dimnames(se2)[[1]]<-paste0("mm>",dimnames(se2)[[1]])
cmb<- rbind(se1, se2)
dim(cmb)


dds1<-DESeqDataSet(cmb, design = ~ Treatment)
####Pre-filtering######
nrow(dds1)
dds1<-dds1[rowSums(counts(dds1))>1,]
nrow(dds1)
####Defferential expression analysis##################
dds1 <- DESeq(dds1)
res <- results(dds1)
write.csv(as.data.frame(res),file="5-8human_mouse.csv")

new_res<-read.csv("5-8human_mouse.csv",fill=TRUE,header=TRUE)
colnames(new_res)<-c("gene","baseMean","log2FoldChange","lfcSE","stat","pvalue","padj")
res_human=list()
res_mouse=list()
number_human<-1
number_mouse<-1

for(i in 1:length(new_res[,1])){
if(str_detect(as.character(new_res$gene[i]),"h>")){
  new_name1<-str_replace(as.character(new_res$gene[i]),"h>","")
  res_human[[number_human]]<-c(new_name1,new_res[i,2:7])
  number_human<-number_human+1
}
  if(str_detect(as.character(new_res$gene[i]),"mm>")){
    new_name2<-str_replace(as.character(new_res$gene[i]),"mm>","")
    res_mouse[[number_mouse]]<-c(new_name2,new_res[i,2:7])
    number_mouse<-number_mouse+1
  }

}

res_human<-do.call(rbind,res_human)
colnames(res_human)<-c("gene","baseMean","log2FoldChange","lfcSE","stat","pvalue","padj")
write.csv(res_human,file="5-8human.csv")

res_mouse<-do.call(rbind,res_mouse)
colnames(res_mouse)<-c("gene","baseMean","log2FoldChange","lfcSE","stat","pvalue","padj")
write.csv(res_mouse,file="5-8mouse.csv")

