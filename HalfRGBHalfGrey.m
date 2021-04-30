imgRGB = imread('sana.jpg');
imgGray = rgb2gray(imgRGB);

[r, c, ~] = size(imgRGB);
c = round(c/2);

imgSplit = imgRGB;
for i = 1:3
  imgSplit([1:r],[1:c],i) = imgGray([1:r],[1:c]);
end

imshow(imgSplit)
%// imwrite(imgSplit,'imgSplit.png')