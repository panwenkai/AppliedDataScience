#Prediction Error
dis.all<-as.matrix(dist(score30.pic))
save(dis.all,file="disall.Rd")
dis.all1<-dis.all[1:7049,1:7049]
samp<-sample(1:7049)[1:6049]
traintestdis<-dis.all1[samp,-samp]
myind.vec<-apply(traintestdis,2,which.min)


mean.vec=rep(0,8)
j=1
for (i in c(1,2,3,4,21,22,29,30)){
  mean.vec[j]=sqrt(mean(na.omit(d.train[myind.vec,i]-d.train[-samp,i])^2))
  j=j+1
}
mean(mean.vec)

mean.vec=rep(0,8)
j=1
for (i in c(1,2,3,4,21,22,29,30)){
  mean.vec[j]=sqrt(mean(na.omit(d.train[19,i]-d.train[8,i])^2))
  j=j+1
}
mean(mean.vec)
