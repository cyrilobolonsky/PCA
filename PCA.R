#Principal Component Analysis with R using the library FacoMineR
#1)preliminaries
#adding the file to R
auto<-read.table("auto2004.csv", header=TRUE, sep=",")
#viewing the structure of the file
str(auto)
#attaching the file to the R memory
attach(auto)
#installing the library FactoMineR
library(FactoMineR)

#2)conducting the PCA
res.pca<-PCA(auto[,3:8], scale.unit=TRUE, ncp=6, graph=F)
res.pca$eig
barplot(res.pca$eig[,1])
res.pca<-PCA(auto[,3:8], scale.unit=TRUE, ncp=2, graph=T)
res.pca$ind$coord
res.pca$ind$coord->fact
cbind(auto, fact)->auto
res.pca$var$cor
dimdesc(res.pca, axes=c(1,2))
