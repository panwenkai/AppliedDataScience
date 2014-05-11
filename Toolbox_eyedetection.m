%To detect Eyes
EyeDetect = vision.CascadeObjectDetector('EyePairBig');

%Read the input Image
I = imread('images/3.jpeg');


BB=step(EyeDetect,I);



figure,imshow(I);
for i = 1:size(BB,1)
 rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Eyes Detection');