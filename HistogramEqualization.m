%COLOR HISTOGRAM EQUALIZATION
I = imread('1.jpg');

%CONVERT THE RGB IMAGE INTO HSV 
HSV = rgb2hsv(I);
%https://www.imageeprocessing.com/2013/05/converting-rgb-image-to-hsi.html

Heq = histeq(HSV(:,:,3));

HSV_mod = HSV;
HSV_mod(:,:,3) = Heq;

RGB = hsv2rgb(HSV_mod);
%https://www.imageeprocessing.com/2013/06/convert-hsi-image-to-rgb-image.html

figure,subplot(1,2,1),imshow(I);title('Before Histogram Equalization');

       subplot(1,2,2),imshow(RGB);title('After Histogram Equalization');