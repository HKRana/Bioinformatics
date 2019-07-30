setwd("F:\\Green University\\Personal\\Research\\Effects of Welding on Health\\Genetic Effect of Welding on the Cancer Diseases\\Survival\\Colorectal")
wf<-read.csv("Common_altred_genes_of_WFs_to_CC.csv",header = TRUE,stringsAsFactors = FALSE)

mrna<-read.csv("data_mRNA_median_Zscores.csv",header = TRUE,stringsAsFactors = FALSE)

data<-mrna[(mrna$Hugo_Symbol %in% wf$Welding.Fumes),]
data2<-t(data)

write.table(data2, file = "data_mRNA_median_Zscores2.csv",sep=",",  col.names=FALSE)

