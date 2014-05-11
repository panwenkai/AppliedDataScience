#Prediction Error
dis.all<-as.matrix(dist(score30.pic))
save(dis.all,file="disall.Rd")
dis.all1<-dis.all[1:7049,1:7049]
samp<-sample(1:7049)[1:6049]
traintestdis<-dis.all1[samp,-samp]
myind.vec<-apply(traintestdis,2,which.min)
mean.vec=rep(0,4)
j=1
for (i in c(1,2,11,15)){
  mean.vec[j]=mean(na.omit(sqrt((d.train[myind.vec,2*i-1]-d.train[-samp,2*i-1])^2+(d.train[myind.vec,2*i]-d.train[-samp,2*i])^2)))
  j=j+1
}