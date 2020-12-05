setwd("C:/Users/Anu/Desktop")
Xt <- read.csv("BreastCancer.csv")
Xt
head(Xt)
Xt <- read.csv("Xt.csv",sep=",")
head(Xt)
#head means to see first 6 rows.

Yt <- Xt[Xt$Class == "malignant",c("Id","Cell.size")]
#To see Id and cell size of those whose Class is malignant.

Bt <- Xt[Xt$Class == "benign",c("X","Cl.thickness","Cell.size","Cell.shape","Marg.adhesion","Epith.c.size","Bare.nuclei","Bl.cromatin","Normal.nucleoli","Mitoses","Class")]
Mt <- Xt[Xt$Class == "malignant",c("X","Cl.thickness","Cell.size","Cell.shape","Marg.adhesion","Epith.c.size","Bare.nuclei","Bl.cromatin","Normal.nucleoli","Mitoses","Class")]
#We have divided the data into 2 sets. Benign (Bt) and Malignant (Mt)

hist(Bt$Cl.thickness, col="green", density =15, angle =45)
hist(Mt$Cl.thickness, col="red", density =15, angle =45)
hist(Bt$Cell.size, col="green", density =15, angle =45) 
hist(Mt$Cell.size, col="red", density =15, angle =45)
hist(Bt$Mitoses, col="green", density =15, angle =45) 
hist(Mt$Mitoses, col="red", density =15, angle =45) 