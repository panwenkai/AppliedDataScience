#This file is to reduce 96*96 to 24*24
#"data.Rd"is the clean version of
load("data.Rd")
my.melt<-function(x){
  y.mat<-matrix(0,24,24)
  x.mat<-matrix(x,96,96)
  for (i in 1:24){
    for (j in 1:24){
      y.mat[i,j]=mean(x.mat[(4*i-3):(4*i),(4*j-3):(4*j)])}}
  y.vec1<-as.vector(y.mat[,24:1])
  return(y.vec1)
}
red.im.train<-t(apply(im.train,1,FUN=my.melt))
red.im.test<-t(apply(im.test,1,FUN=my.melt))
save(red.im.train, red.im.test, file='reducedata.Rd')