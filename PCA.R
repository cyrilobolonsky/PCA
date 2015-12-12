#Principal Component Analysis with R using the library FacoMineR
#adding the file to the R memeory
auto<-read.table("auto2004.csv", header=TRUE, sep=",")
str(auto)
attach(auto)
library(FactoMineR)
res.pca<-PCA(auto[,3:8], scale.unit=TRUE, ncp=6, graph=F)
res.pca$eig
barplot(res.pca$eig[,1])
res.pca<-PCA(auto[,3:8], scale.unit=TRUE, ncp=2, graph=T)
res.pca$ind$coord
res.pca$ind$coord->fact
cbind(auto, fact)->auto
res.pca$var$cor
dimdesc(res.pca, axes=c(1,2))
