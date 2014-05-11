load('reducedata.Rd')

dim(red.im.train)
red.pic<-rbind(red.im.train, red.im.test)

#Regression--Bad result!
nose_x<- d.train$nose_tip_x
lm.data<-data.frame(y=d.train$nose_tip_x,im.train)
lm.data<- lm.data[,-1]
lm.data<- na.omit(lm.data)
ln.fit<-glmnet(as.matrix(train_mask[1:5000,]),nose_x[1:5000],alpha = 0.5)
train<- c(1:5000)
tree <- tree(y~.,lm.data ,subset =train)

yhat <- predict (tree ,newdata = lm.data [5000:6000 ,])
mean((yhat - nose_x[5000:6000])^2)

pre.res<-predict(ln.fit,newx = as.matrix(train_mask[5000:6000,]))

nose_y<- d.train$nose_tip_y
lm.data2<-data.frame(y=d.train[,2],red.im.train)
ln.fit2<-glmnet(as.matrix(train_mask[1:5000,]),nose_y[1:5000],alpha = 0.5)
pre.res2<-predict(ln.fit2,newx = as.matrix(train_mask[5000:6000,]))

erro.see<-sqrt((nose_x[5000:6000]-pre.res)^2+(nose_y[5000:6000]-pre.res2)^2)
mean(erro.see)

#PCA and KNN(1-NN)
red.pic<-red.pic-colMeans(red.pic)
pca.res<-princomp(red.pic)

pca.loading<-loadings(pca.res) 
#first 30 eigenfaces
score30.pic<-pca.res$scores[,1:30]

score30.train<-score30.pic[1:7049,]
score30.test<-score30.pic[7050:8832,]
#Distant matrix
dis.all<-as.matrix(dist(score30.pic))
dim(dis.all)
traintestdis<-dis.all[1:7049,7050:8832]
myind.vec<-apply(traintestdis,2,which.min)
#Here myind.vec represent which index in training is the nearest for test.
#try to see myind.vec[1:5]

im<-matrix(rev(im.train[155,]),96,96)
image(1:96, 1:96, im, col=gray((0:255)/255))
im<-matrix(rev(im.test[1,]),96,96)
image(1:96, 1:96, im, col=gray((0:255)/255))
