
d.train <- read.csv("training.csv", stringsAsFactors=F)
im.train      <- d.train$Image
d.train$Image <- NULL
as.integer(unlist(strsplit(im.train[1], " ")))
install.packages('foreach')
require(foreach)

im.train <- foreach(im = im.train, .combine=rbind) %do% {
  as.integer(unlist(strsplit(im, " ")))
}
d.test  <- read.csv("test.csv", stringsAsFactors=F)
im.test <- foreach(im = d.test$Image, .combine=rbind) %do% {
  as.integer(unlist(strsplit(im, " ")))
}
d.test$Image <- NULL
save(d.train, im.train, d.test, im.test, file='data.Rd')

im <- matrix(data=rev(im.train[1,]), nrow=96, ncol=96)
image(1:96, 1:96, im, col=gray((0:255)/255))
points(96-d.train$nose_tip_x[1],         96-d.train$nose_tip_y[1],         col="red")
points(96-d.train$left_eye_center_x[1],  96-d.train$left_eye_center_y[1],  col="blue")
points(96-d.train$right_eye_center_x[1], 96-d.train$right_eye_center_y[1], col="green")

for(i in 1:nrow(d.train)) {
  points(96-d.train$nose_tip_x[i], 96-d.train$nose_tip_y[i], col="red")
}
idx <- which.max(d.train$nose_tip_x)
im  <- matrix(data=rev(im.train[idx,]), nrow=96, ncol=96)
image(1:96, 1:96, im, col=gray((0:255)/255))
points(96-d.train$nose_tip_x[idx], 96-d.train$nose_tip_y[idx], col="red")

# The link: https://www.kaggle.com/c/facial-keypoints-detection/details/getting-started-with-r