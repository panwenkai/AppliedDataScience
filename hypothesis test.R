load("data.Rd")
View(d.train)
dim(im.train)
dim(d.test)

i=2
im  <- matrix(data=rev(im.train[i,]), nrow=96, ncol=96)
image(1:96, 1:96, im, col=gray((0:255)/255))
for(j in 1:15){
  points(96-d.train[i,2*j-1], 96-d.train[i,2*j], col="red")
}
my.reshape<-function(x){
  x=as.matrix(x)
  y<-matrix(0,15,2)
  for(i in 1:15){
    y[i,1]<-x[2*i-1]
    y[i,2]<-x[2*i]
  }
  return(y)
}

fix(d.train)
cou<-matrix(0,30,1)
for (i in 1:30){
  cou[i]<-sum(is.na(d.train[,i]))
  }
cou
#pick 1,2,3,4,21,22,29,30
i=8
image(1:96, 1:96, im, col=gray((0:255)/255))
points(96-d.train[i,1], 96-d.train[i,2], col="red")
points(96-d.train[i,3], 96-d.train[i,4], col="red")
points(96-d.train[i,21], 96-d.train[i,22], col="red")
points(96-d.train[i,29], 96-d.train[i,30], col="red")

omit.train<-na.omit(d.train)
dim(omit.train)
omit.dist<-matrix(0,2140,105)
for(i in 1:2140){
  omit.dist[i,]<-as.vector(dist(my.reshape(d.train[i,])))
}
omit.dist=na.omit(omit.dist)
dim(omit.dist)
View(omit.dist)
scale.vec<-rowMeans(omit.dist)
allmeans<-mean(na.omit(omit.dist))
allmeans
omit.dist.scl<-omit.dist/scale.vec*allmeans
emp.cov<-cov(omit.dist.scl)
emp.mean<-colMeans(omit.dist)
samp.ind<-sample(1:2026,1900,replace = FALSE)
train.mean<-colMeans(omit.dist.scl[samp.ind,])
#library(ICSNP)
HotellingsT2(omit.dist.scl[-samp.ind,1:104],  mu = train.mean[1:104], test = "f",na.action = na.fail)
sum((train.mean-test.mean)^2)


#####################################################################
d.train2<-d.train[,c(1,2,3,4,21,22,29,30)]
omit.train<-na.omit(d.train2)
dim(omit.train)

my.reshape2<-function(x){
  x=as.matrix(x)
  y<-matrix(0,4,2)
  for(i in 1:4){
    y[i,1]<-x[2*i-1]
    y[i,2]<-x[2*i]
  }
  return(y)
}

omit.dist<-matrix(0,7000,6)
for(i in 1:7000){
  omit.dist[i,]<-as.vector(dist(my.reshape2(omit.train[i,])))
}
omit.dist=na.omit(omit.dist)
dim(omit.dist)
View(omit.dist)
scale.vec<-rowMeans(omit.dist)
allmeans<-mean(na.omit(omit.dist))
allmeans
omit.dist.scl<-omit.dist/scale.vec*allmeans
dim(omit.dist.scl)
emp.cov<-cov(omit.dist.scl)
View(emp.cov)

emp.mean<-colMeans(omit.dist.scl)
samp.ind<-sample(1:7000,1783,replace = FALSE)
train.mean<-colMeans(omit.dist.scl[-samp.ind,])

library(ICSNP)
HotellingsT2(omit.dist.scl[samp.ind,1:5],mu = train.mean[1:5], test = "f",na.action = na.fail)
